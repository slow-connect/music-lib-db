FasdUAS 1.101.10   ��   ��    k             l     ��  ��    1 + Initialize a variable to hold the CSV data     � 	 	 V   I n i t i a l i z e   a   v a r i a b l e   t o   h o l d   t h e   C S V   d a t a   
  
 l     ����  r         b         m        �   8 N a m e , A r t i s t , A l b u m , P l a y   C o u n t  1    ��
�� 
lnfd  o      ���� 0 csvdata csvData��  ��        l     ��������  ��  ��        l   x ����  O    x    k   
 w       r   
     n   
      2    ��
�� 
cTrk   4   
 �� !
�� 
cLiP ! m    ����   o      ���� 0 	alltracks 	allTracks   " # " l   ��������  ��  ��   #  $�� $ X    w %�� & % k   # r ' '  ( ) ( r   # ( * + * n   # & , - , 1   $ &��
�� 
pnam - o   # $���� 0 atrack aTrack + o      ���� 0 	trackname 	trackName )  . / . r   ) . 0 1 0 n   ) , 2 3 2 1   * ,��
�� 
pArt 3 o   ) *���� 0 atrack aTrack 1 o      ���� 0 trackartist trackArtist /  4 5 4 r   / 4 6 7 6 n   / 2 8 9 8 1   0 2��
�� 
pAlb 9 o   / 0���� 0 atrack aTrack 7 o      ���� 0 
trackalbum 
trackAlbum 5  : ; : r   5 > < = < n   5 : > ? > 1   6 :��
�� 
pPlC ? o   5 6���� 0 atrack aTrack = o      ����  0 trackplaycount trackPlayCount ;  @ A @ l  ? ?��������  ��  ��   A  B C B l  ? ?�� D E��   D * $ Append track information to csvData    E � F F H   A p p e n d   t r a c k   i n f o r m a t i o n   t o   c s v D a t a C  G�� G r   ? r H I H b   ? p J K J b   ? n L M L b   ? j N O N b   ? f P Q P b   ? b R S R b   ? ` T U T b   ? \ V W V b   ? X X Y X b   ? T Z [ Z b   ? R \ ] \ b   ? N ^ _ ^ b   ? J ` a ` b   ? F b c b b   ? D d e d o   ? @���� 0 csvdata csvData e m   @ C f f � g g  " c o   D E���� 0 	trackname 	trackName a m   F I h h � i i  " _ m   J M j j � k k  , ] m   N Q l l � m m  " [ o   R S���� 0 trackartist trackArtist Y m   T W n n � o o  " W m   X [ p p � q q  , U m   \ _ r r � s s  " S o   ` a���� 0 
trackalbum 
trackAlbum Q m   b e t t � u u  " O m   f i v v � w w  , M o   j m����  0 trackplaycount trackPlayCount K 1   n o��
�� 
lnfd I o      ���� 0 csvdata csvData��  �� 0 atrack aTrack & o    ���� 0 	alltracks 	allTracks��    m     x x�                                                                                      @ alis    ,  Macintosh HD               ��BD ����	Music.app                                                      ������        ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    M a c i n t o s h   H D  System/Applications/Music.app   / ��  ��  ��     y z y l     ��������  ��  ��   z  { | { l     �� } ~��   } , & Define the file path for the CSV file    ~ �   L   D e f i n e   t h e   f i l e   p a t h   f o r   t h e   C S V   f i l e |  � � � l     �� � ���   � C = replace ... with the pwd path, where '/' are replaced by ':'    � � � � z   r e p l a c e   . . .   w i t h   t h e   p w d   p a t h ,   w h e r e   ' / '   a r e   r e p l a c e d   b y   ' : ' �  � � � l  y � ����� � r   y � � � � m   y | � � � � � " . . . : t m p _ m u s i c . c s v � o      ���� 0 filepath filePath��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Create the CSV file    � � � � (   C r e a t e   t h e   C S V   f i l e �  � � � l  � � ����� � r   � � � � � l  � � ����� � I  � ��� � �
�� .rdwropenshor       file � 4   � ��� �
�� 
file � o   � ����� 0 filepath filePath � �� ���
�� 
perm � m   � ���
�� boovtrue��  ��  ��   � o      ���� 0 fileref fileRef��  ��   �  � � � l  � � ����� � I  � ��� � �
�� .rdwrseofnull���     **** � o   � ����� 0 fileref fileRef � �� ���
�� 
set2 � m   � �����  ��  ��  ��   �  � � � l  � � ����� � I  � ��� � �
�� .rdwrwritnull���     **** � o   � ����� 0 csvdata csvData � �� � �
�� 
refn � o   � ����� 0 fileref fileRef � �� ���
�� 
as   � m   � ���
�� 
utf8��  ��  ��   �  � � � l  � � ����� � I  � ��� ���
�� .rdwrclosnull���     **** � o   � ����� 0 fileref fileRef��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  � � ����� � L   � � � � o   � ����� 0 filepath filePath��  ��   �  ��� � l     ��������  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �  
 � �   � �  � � �  � � �  � � �  � � �  � � �  �����  ��  ��   � ���� 0 atrack aTrack � ) ���� x���������������������������� f h j l n p r t v �������������~�}�|�{�z�y�x
�� 
lnfd�� 0 csvdata csvData
�� 
cLiP
�� 
cTrk�� 0 	alltracks 	allTracks
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pnam�� 0 	trackname 	trackName
�� 
pArt�� 0 trackartist trackArtist
�� 
pAlb�� 0 
trackalbum 
trackAlbum
�� 
pPlC��  0 trackplaycount trackPlayCount�� 0 filepath filePath
�� 
file
�� 
perm
�� .rdwropenshor       file�� 0 fileref fileRef
� 
set2
�~ .rdwrseofnull���     ****
�} 
refn
�| 
as  
�{ 
utf8�z 
�y .rdwrwritnull���     ****
�x .rdwrclosnull���     ****�� ���%E�O� o*�k/�-E�O c�[��l 	kh  ��,E�O��,E�O��,E�O�a ,E` O�a %�%a %a %a %�%a %a %a %�%a %a %_ %�%E�[OY��UOa E` O*a _ /a el E`  O_  a !jl "O�a #_  a $a %a & 'O_  j (O_  ascr  ��ޭ