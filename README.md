# Music Library Database

A set of scripts that count each month how often you listened to each song in your Apple Music app on you computer.

## Usage

1. Clone the repository
2. Check that you have the required dependencies installed. It works with the versions listed in the `requirements.txt` file.
3. Some changes in the paths need to be made. In `get_music_data.scpt` you need to change the path in `set filePath to "...:tmp_music.csv"` to the folder where you cloned the repository
4. Create a cronjob on the first of each month using `crontab -e` and add the following line:

```
0 12 1 * * cd /path/to/your/repo && /path/to/python3 music_scheduler.py >> /path/to/your/repo/logs.txt 2>&1
```

to find the `path/to/python3` use `which python3` and to find the `path/to/your/repo` use `pwd` in the folder where you cloned the repository.

5. The script will now run every first of the month at 12:00 and will write the output to `logs.txt` in the repository folder. The output will be the date and the `music_sync.py` file will create a csv file with a new column for the current month and the number of times you listened to the song in that month in the file `play_counts.csv`.
