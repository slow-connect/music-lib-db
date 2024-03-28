import pandas as pd
import numpy as np
import subprocess
import os
from os.path import exists
from datetime import datetime


def unique_id(row):
    return row["artist"] + "|" + row["song"] + "|" + row["album"]

subprocess.run(["sh", "export_plays.sh"])
play_counts = "play_counts.csv"

if exists(play_counts):
    df = pd.read_csv(play_counts, index_col=0)
    df['unique_id'] = df.apply(lambda row: unique_id(row), axis=1)
    df.index = df["unique_id"]
    cols = df.columns[3:-1]
    df['total'] = df.eval('+'.join(cols))
    new_counts = pd.read_csv("tmp_music.csv")
    new_counts = new_counts.rename(columns={"Play Count" : "count", "Artist" : "artist", "Name" : "song", "Album" : "album"})
    new_counts['unique_id'] = new_counts.apply(lambda row: unique_id(row), axis=1)
    new_counts.index = new_counts["unique_id"]


    month = datetime.now().strftime("%b")
    year = datetime.now().strftime("%y")
    col = str(year) + "-" + str(month)
    df = pd.merge(df, new_counts, left_index=True, right_index=True, how="outer")
    df['song'] = df['song_x'].combine_first(df['song_y'])
    df['artist'] = df['artist_x'].combine_first(df['artist_y'])
    df['album'] = df['album_x'].combine_first(df['album_y'])
    df.drop(columns=["song_x", "song_y", "artist_x", "artist_y", "album_x", "album_y", "unique_id_x", "unique_id_y"], inplace=True)
    df[col] = df.apply(lambda row: row['count'] - row['total'] if row['count'] > row['total'] else 0, axis=1)
    lst = [-4, -3, -2] +  [_ for _ in range(0, len(df.columns) - 4)] +  [-1]
    df = df.iloc[:,lst]
    df.reset_index(drop=True, inplace=True)
    for index, row in df.iterrows():
        if not (row['initial_play_count'] >= 0):
            df['initial_play_count'][index] = row['count']
            for i in range(4, len(df.columns)):
                df[df.columns[i]][index] = 0
    df.drop(columns=["count", "total"], inplace=True)

    for i in range(3, len(df.columns)):
        df[df.columns[i]] = df[df.columns[i]].astype(int)
    df.to_csv(play_counts, index=False)




else:
    df = pd.read_csv("tmp_music.csv")
    df = df.rename(columns={"Play Count" : "initial_play_count", "Artist" : "artist", "Name" : "song", "Album" : "album"})
    df.to_csv(play_counts)


subprocess.run(["rm", "tmp_music.csv"])
print(datetime.now().date())
