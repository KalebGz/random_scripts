FasdUAS 1.101.10   ��   ��    k             l      ��  ��   �� How to use this script:

Open this script in Script Editor. Launch Photos.
Select the photos and videos you want to distribute between the albums.

When all all photo are selected, press the "Run" button in Script Editor.

Originally this script would split the selection into two albums - 
- one album with pictures or videos larger than the given file size threshold 
- one album with pictures  or videos smaller  than the given file size threshold 

... and the file threshold was expressed in KB

Now, this script only filters out videos larger than the given file size threshold into a single album

...and the file threshold is expressed in MB

Only two albums are created: one for items larger than the threshold and one for skipped items
and the created album names now have spaces (i.e. Larger Than 100 MB) to make them more readable

Finally, items are added to their respective folder only if found

Original author: l�onie
Updated by: Damien Schreurs on 10-dec-22
     � 	 	�   H o w   t o   u s e   t h i s   s c r i p t : 
 
 O p e n   t h i s   s c r i p t   i n   S c r i p t   E d i t o r .   L a u n c h   P h o t o s . 
 S e l e c t   t h e   p h o t o s   a n d   v i d e o s   y o u   w a n t   t o   d i s t r i b u t e   b e t w e e n   t h e   a l b u m s . 
 
 W h e n   a l l   a l l   p h o t o   a r e   s e l e c t e d ,   p r e s s   t h e   " R u n "   b u t t o n   i n   S c r i p t   E d i t o r . 
 
 O r i g i n a l l y   t h i s   s c r i p t   w o u l d   s p l i t   t h e   s e l e c t i o n   i n t o   t w o   a l b u m s   -   
 -   o n e   a l b u m   w i t h   p i c t u r e s   o r   v i d e o s   l a r g e r   t h a n   t h e   g i v e n   f i l e   s i z e   t h r e s h o l d   
 -   o n e   a l b u m   w i t h   p i c t u r e s     o r   v i d e o s   s m a l l e r     t h a n   t h e   g i v e n   f i l e   s i z e   t h r e s h o l d   
 
 . . .   a n d   t h e   f i l e   t h r e s h o l d   w a s   e x p r e s s e d   i n   K B 
 
 N o w ,   t h i s   s c r i p t   o n l y   f i l t e r s   o u t   v i d e o s   l a r g e r   t h a n   t h e   g i v e n   f i l e   s i z e   t h r e s h o l d   i n t o   a   s i n g l e   a l b u m 
 
 . . . a n d   t h e   f i l e   t h r e s h o l d   i s   e x p r e s s e d   i n   M B 
 
 O n l y   t w o   a l b u m s   a r e   c r e a t e d :   o n e   f o r   i t e m s   l a r g e r   t h a n   t h e   t h r e s h o l d   a n d   o n e   f o r   s k i p p e d   i t e m s 
 a n d   t h e   c r e a t e d   a l b u m   n a m e s   n o w   h a v e   s p a c e s   ( i . e .   L a r g e r   T h a n   1 0 0   M B )   t o   m a k e   t h e m   m o r e   r e a d a b l e 
 
 F i n a l l y ,   i t e m s   a r e   a d d e d   t o   t h e i r   r e s p e c t i v e   f o l d e r   o n l y   i f   f o u n d 
 
 O r i g i n a l   a u t h o r :   l � o n i e 
 U p d a t e d   b y :   D a m i e n   S c h r e u r s   o n   1 0 - d e c - 2 2 
   
  
 l     ��������  ��  ��        l     ��  ��    # the file size threshold in MB     �   : t h e   f i l e   s i z e   t h r e s h o l d   i n   M B      l         r         m     ���� �  o      ���� 40 defaultfilesizethreshold defaultFileSizeThreshold  f ` 200 MB,  change this to the minimum file size you want for a photo/video to be counted as large     �   �   2 0 0   M B ,     c h a n g e   t h i s   t o   t h e   m i n i m u m   f i l e   s i z e   y o u   w a n t   f o r   a   p h o t o / v i d e o   t o   b e   c o u n t e d   a s   l a r g e      l     ��������  ��  ��        l    ����  r        I   ��   !
�� .sysodlogaskr        TEXT   l 	   "���� " m     # # � $ $ j E n t e r   t h e   m i n i m u m   f i l e   s i z e   f o r   l a r g e   v i d e o s   i n   M B   :  ��  ��   ! �� % &
�� 
btns % l 
  
 '���� ' J    
 ( (  ) * ) m     + + � , ,  C a n c e l *  -�� - m     . . � / /  O K��  ��  ��   & �� 0��
�� 
dtxt 0 l    1���� 1 c     2 3 2 o    ���� 40 defaultfilesizethreshold defaultFileSizeThreshold 3 m    ��
�� 
ctxt��  ��  ��    o      ���� 0 dialogresult dialogResult��  ��     4 5 4 l    6 7 8 6 r     9 : 9 c     ; < ; l    =���� = n     > ? > 1    ��
�� 
ttxt ? o    ���� 0 dialogresult dialogResult��  ��   < m    ��
�� 
long : o      ���� *0 filesizethresholdmb FileSizeThresholdMB 7   file size in MB    8 � @ @     f i l e   s i z e   i n   M B 5  A B A l   $ C D E C r    $ F G F ]    " H I H ]      J K J o    ���� *0 filesizethresholdmb FileSizeThresholdMB K m    ����  I m     !����  G o      ���� &0 filesizethreshold FileSizeThreshold D   file size in Byte    E � L L $   f i l e   s i z e   i n   B y t e B  M N M l     ��������  ��  ��   N  O P O l     ��������  ��  ��   P  Q R Q l     �� S T��   S v pset smallAlbumName to "smallerThan" & FileSizeThresholdMB & "MB" -- the album to collect the small photos/videos    T � U U � s e t   s m a l l A l b u m N a m e   t o   " s m a l l e r T h a n "   &   F i l e S i z e T h r e s h o l d M B   &   " M B "   - -   t h e   a l b u m   t o   c o l l e c t   t h e   s m a l l   p h o t o s / v i d e o s R  V W V l     ��������  ��  ��   W  X Y X l  % 2 Z [ \ Z r   % 2 ] ^ ] b   % . _ ` _ b   % * a b a m   % ( c c � d d  L a r g e r   T h a n   b o   ( )���� *0 filesizethresholdmb FileSizeThresholdMB ` m   * - e e � f f    M B ^ o      ����  0 largealbumname largeAlbumName [ 4 . the album to collect the larger photos/videos    \ � g g \   t h e   a l b u m   t o   c o l l e c t   t h e   l a r g e r   p h o t o s / v i d e o s Y  h i h l     ��������  ��  ��   i  j k j l  3 l���� l O   3 m n m k   9 o o  p q p I  9 >������
�� .miscactvnull��� ��� null��  ��   q  r s r l  ? ?�� t u��   t j d Ensures that items have been selected in Photos by returning the size of the first item of imageSel    u � v v �   E n s u r e s   t h a t   i t e m s   h a v e   b e e n   s e l e c t e d   i n   P h o t o s   b y   r e t u r n i n g   t h e   s i z e   o f   t h e   f i r s t   i t e m   o f   i m a g e S e l s  w x w Q   ? c y z { y r   B L | } | l  B H ~���� ~ e   B H   1   B H��
�� 
selc��  ��   } o      ���� 0 imagesel imageSel z R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 
errtexttwo 
errTexttwo � �� ���
�� 
errn � o      ���� 0 	errnumtwo 	errNumtwo��   { I  T c�� ���
�� .sysodlogaskr        TEXT � b   T _ � � � b   T ] � � � b   T Y � � � m   T W � � � � � 4 C a n n o t   g e t   t h e   s e l e c t i o n :   � o   W X���� 0 	errnumtwo 	errNumtwo � o   Y \��
�� 
ret  � o   ] ^���� 0 
errtexttwo 
errTexttwo��   x  � � � l  d d��������  ��  ��   �  � � � l  d d�� � ���   � 0 * Ensure that the necessary albums do exist    � � � � T   E n s u r e   t h a t   t h e   n e c e s s a r y   a l b u m s   d o   e x i s t �  � � � Q   d � � � � � k   g � � �  � � � l  g g�� � ���   � 3 -if not (exists container smallAlbumName) then    � � � � Z i f   n o t   ( e x i s t s   c o n t a i n e r   s m a l l A l b u m N a m e )   t h e n �  � � � l  g g�� � ���   � * $	make new album named smallAlbumName    � � � � H 	 m a k e   n e w   a l b u m   n a m e d   s m a l l A l b u m N a m e �  � � � l  g g�� � ���   �  end if    � � � �  e n d   i f �  � � � l  g g�� � ���   � 3 -set theSmallAlbum to container smallAlbumName    � � � � Z s e t   t h e S m a l l A l b u m   t o   c o n t a i n e r   s m a l l A l b u m N a m e �  � � � l  g g��������  ��  ��   �  � � � Z   g � � ����� � H   g t � � l  g s ����� � I  g s�� ���
�� .coredoexnull���     **** � 4   g o�� �
�� 
IPct � o   k n����  0 largealbumname largeAlbumName��  ��  ��   � I  w ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   { ~��
�� 
IPal � �� ���
�� 
naME � o   � �����  0 largealbumname largeAlbumName��  ��  ��   �  � � � r   � � � � � 4   � ��� �
�� 
IPct � o   � �����  0 largealbumname largeAlbumName � o      ���� 0 thelargealbum theLargeAlbum �  � � � l  � ���������  ��  ��   �  � � � Z   � � � ����� � H   � � � � l  � � ����� � I  � ��� ���
�� .coredoexnull���     **** � 4   � ��� �
�� 
IPct � m   � � � � � � �  S k i p p e d   P h o t o s��  ��  ��   � I  � ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   � ���
�� 
IPal � �� ���
�� 
naME � m   � � � � � � �  S k i p p e d   P h o t o s��  ��  ��   �  � � � r   � � � � � 4   � ��� �
�� 
IPct � m   � � � � � � �  S k i p p e d   P h o t o s � o      ���� "0 theskippedalbum theSkippedAlbum �  � � � l  � ���������  ��  ��   �  ��� � l  � ���������  ��  ��  ��   � R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 
errtexttwo 
errTexttwo � � ��~
� 
errn � o      �}�} 0 	errnumtwo 	errNumtwo�~   � I  � ��| ��{
�| .sysodlogaskr        TEXT � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � � ( C a n n o t   o p e n   a l b u m s :   � o   � ��z�z 0 	errnumtwo 	errNumtwo � o   � ��y
�y 
ret  � o   � ��x�x 0 
errtexttwo 
errTexttwo�{   �  � � � l  � ��w�v�u�w  �v  �u   �  � � � l  � ��t � ��t   � < 6 process the selected photos from the All Photos album    � � � � l   p r o c e s s   t h e   s e l e c t e d   p h o t o s   f r o m   t h e   A l l   P h o t o s   a l b u m �  � � � l  � ��s�r�q�s  �r  �q   �  � � � l  � ��p � ��p   � 8 2 set smallPhotos to {} -- the list of small photos    � � � � d   s e t   s m a l l P h o t o s   t o   { }   - -   t h e   l i s t   o f   s m a l l   p h o t o s �  � � � l  � � � � � � r   � � � � � J   � ��o�o   � o      �n�n 0 largephotos largePhotos �    the list of larger photos    � � � � 4   t h e   l i s t   o f   l a r g e r   p h o t o s �  � � � l  � �   r   � � J   � ��m�m   o      �l�l 0 skippedphotos skippedPhotos "  the list of skipped  photos    � 8   t h e   l i s t   o f   s k i p p e d     p h o t o s �  l  � ��k�j�i�k  �j  �i   	 l  � ��h�g�f�h  �g  �f  	 

 l  � ��e�e   C =	check, if the album or the selected photos do contain images    � z 	 c h e c k ,   i f   t h e   a l b u m   o r   t h e   s e l e c t e d   p h o t o s   d o   c o n t a i n   i m a g e s  l  � ��d�c�b�d  �c  �b    Z   ��a =  � � o   � ��`�` 0 imagesel imageSel J   � ��_�_   R   ��^�]
�^ .ascrerr ****      � **** m   � � 4 P l e a s e   s e l e c t   s o m e   i m a g e s .�]  �a   k    X  ��\ k  �   !"! Q  {#$%# k  -&& '(' l �[�Z�Y�[  �Z  �Y  ( )�X) O  -*+* l #,,-., r  #,/0/ n #(121 1  $(�W
�W 
fsiz2  g  #$0 o      �V�V 0 s  -  get the file size   . �33 " g e t   t h e   f i l e   s i z e+ o   �U�U 0 im  �X  $ R      �T45
�T .ascrerr ****      � ****4 o      �S�S 0 errtext errText5 �R6�Q
�R 
errn6 o      �P�P 0 errnum errNum�Q  % k  5{77 898 I 5H�O:�N
�O .sysodlogaskr        TEXT: b  5D;<; b  5@=>= b  5>?@? b  5:ABA m  58CC �DD  E r r o r :  B o  89�M�M 0 errnum errNum@ o  :=�L
�L 
ret > o  >?�K�K 0 errtext errText< m  @CEE �FF  T r y i n g   a g a i n�N  9 GHG Q  IyIJKI k  LbLL MNM I LQ�JO�I
�J .sysodelanull��� ��� nmbrO m  LM�H�H �I  N P�GP O  RbQRQ k  VaSS TUT r  V_VWV n V[XYX 1  W[�F
�F 
fsizY  g  VWW o      �E�E 0 s  U Z�DZ l ``�C�B�A�C  �B  �A  �D  R o  RS�@�@ 0 im  �G  J R      �?[\
�? .ascrerr ****      � ****[ o      �>�> 0 
errtexttwo 
errTexttwo\ �=]�<
�= 
errn] o      �;�; 0 	errnumtwo 	errNumtwo�<  K I jy�:^�9
�: .sysodlogaskr        TEXT^ b  ju_`_ b  jsaba b  jocdc m  jmee �ff L S k i p p i n g   i m a g e   d u e   t o   r e p e a t e d   e r r o r :  d o  mn�8�8 0 	errnumtwo 	errNumtwob o  or�7
�7 
ret ` o  st�6�6 0 
errtexttwo 
errTexttwo�9  H g�5g l zz�4�3�2�4  �3  �2  �5  " hih r  |�jkj l |�l�1�0l = |�mnm o  |�/�/ 0 s  n m  ��.
�. 
msng�1  �0  k o      �-�- 0 nosize noSizei opo Z  ��qr�,sq o  ���+�+ 0 nosize noSizer r  ��tut b  ��vwv J  ��xx y�*y o  ���)�) 0 im  �*  w o  ���(�( 0 skippedphotos skippedPhotosu o      �'�' 0 skippedphotos skippedPhotos�,  s l ��z{|z Z  ��}~�&�%} l ���$�# ?  ����� o  ���"�" 0 s  � o  ���!�! &0 filesizethreshold FileSizeThreshold�$  �#  ~ r  ����� b  ����� J  ���� �� � o  ���� 0 im  �   � o  ���� 0 largephotos largePhotos� o      �� 0 largephotos largePhotos�&  �%  { � �
				if (s � FileSizeThreshold) then					set smallPhotos to {im} & smallPhotos				else					set largePhotos to {im} & largePhotos									end if    | ���,  
 	 	 	 	 i f   ( s  "d   F i l e S i z e T h r e s h o l d )   t h e n  	 	 	 	 	 s e t   s m a l l P h o t o s   t o   { i m }   &   s m a l l P h o t o s  	 	 	 	 e l s e  	 	 	 	 	 s e t   l a r g e P h o t o s   t o   { i m }   &   l a r g e P h o t o s  	 	 	 	 	  	 	 	 	 e n d   i f  p ��� l ������  �  �  �  �\ 0 im   o  	�� 0 imagesel imageSel ��� l ������  �  �  � ��� l ������  �   Only add found items		   � ��� .   O n l y   a d d   f o u n d   i t e m s 	 	� ��� l ������  � ' ! add smallPhotos to theSmallAlbum   � ��� B   a d d   s m a l l P h o t o s   t o   t h e S m a l l A l b u m� ��� Z ������� l ������ ?  ����� n  ����� 1  ���
� 
leng� o  ���� 0 largephotos largePhotos� m  ����  �  �  � I �����
� .IPXSaddpnull���     ****� o  ���
�
 0 largephotos largePhotos� �	��
�	 
toAl� o  ���� 0 thelargealbum theLargeAlbum�  �  �  � ��� Z ������� l ������ ?  ����� n  ����� 1  ���
� 
leng� o  ���� 0 skippedphotos skippedPhotos� m  ��� �   �  �  � I ������
�� .IPXSaddpnull���     ****� o  ������ 0 skippedphotos skippedPhotos� �����
�� 
toAl� o  ������ "0 theskippedalbum theSkippedAlbum��  �  �  � ��� l ����������  ��  ��  � ��� l ��������  � � � return "small photos: " & (length of smallPhotos) & ", larger photos : " & (length of largePhotos) & ", skipped: " & (length of skippedPhotos)   � ���   r e t u r n   " s m a l l   p h o t o s :   "   &   ( l e n g t h   o f   s m a l l P h o t o s )   &   " ,   l a r g e r   p h o t o s   :   "   &   ( l e n g t h   o f   l a r g e P h o t o s )   &   " ,   s k i p p e d :   "   &   ( l e n g t h   o f   s k i p p e d P h o t o s )� ��� L  ��� b  ���� b  ���� b  ���� b  ���� b  ���� b  ���� m  ���� ���  F o u n d  � l ������� n  ���� 1  ���
�� 
leng� o  ������ 0 largephotos largePhotos��  ��  � m  �� ��� &   i t e m s   l a r g e r   t h a n  � o  ���� *0 filesizethresholdmb FileSizeThresholdMB� m  �� ���    M B   /   S k i p p e d  � l ������ n  ��� 1  ��
�� 
leng� o  ���� 0 skippedphotos skippedPhotos��  ��  � m  �� ���    i t e m s� ���� l ��������  ��  ��  ��   ���� l ��������  ��  ��  ��   n m   3 6���                                                                                  Phts  alis    0  Catalina SSD               �ŒBD ����
Photos.app                                                     �����Œ        ����  
 cu             Applications  !/:System:Applications:Photos.app/    
 P h o t o s . a p p    C a t a l i n a   S S D  System/Applications/Photos.app  / ��  ��  ��   k ���� l     ��������  ��  ��  ��       ������  � ��
�� .aevtoappnull  �   � ****� �����������
�� .aevtoappnull  �   � ****� k    ��  ��  ��  4��  A��  X��  j����  ��  ��  � ������������ 0 
errtexttwo 
errTexttwo�� 0 	errnumtwo 	errNumtwo�� 0 im  �� 0 errtext errText�� 0 errnum errNum� =���� #�� + .�������������������� c e������������ ����������������� � � ��� ����������������CE��e���������������� ��� 40 defaultfilesizethreshold defaultFileSizeThreshold
�� 
btns
�� 
dtxt
�� 
ctxt�� 
�� .sysodlogaskr        TEXT�� 0 dialogresult dialogResult
�� 
ttxt
�� 
long�� *0 filesizethresholdmb FileSizeThresholdMB�� �� &0 filesizethreshold FileSizeThreshold��  0 largealbumname largeAlbumName
�� .miscactvnull��� ��� null
�� 
selc�� 0 imagesel imageSel�� 0 
errtexttwo 
errTexttwo� ������
�� 
errn�� 0 	errnumtwo 	errNumtwo��  
�� 
ret 
�� 
IPct
�� .coredoexnull���     ****
�� 
kocl
�� 
IPal
�� 
naME
�� .corecrel****      � null�� 0 thelargealbum theLargeAlbum�� "0 theskippedalbum theSkippedAlbum�� 0 largephotos largePhotos�� 0 skippedphotos skippedPhotos
�� 
cobj
�� .corecnte****       ****
�� 
fsiz�� 0 s  �� 0 errtext errText� ������
�� 
errn�� 0 errnum errNum��  
�� .sysodelanull��� ��� nmbr
�� 
msng�� 0 nosize noSize
�� 
leng
�� 
toAl
�� .IPXSaddpnull���     ****���E�O����lv���&� 	E�O��,�&E�O�� � E�Oa �%a %E` Oa �*j O *a ,EE` W X  a �%_ %�%j 	O l*a _ /j  *a a a _ �  Y hO*a _ /E` !O*a a "/j  *a a a a #�  Y hO*a a $/E` %OPW X  a &�%_ %�%j 	OjvE` 'OjvE` (O_ jv  )ja )Y �_ [a a *l +kh  � *a ,,E` -UW MX . /a 0�%_ %�%a 1%j 	O lj 2O� *a ,,E` -OPUW X  a 3�%_ %�%j 	OPO_ -a 4 E` 5O_ 5 �kv_ (%E` (Y _ -� �kv_ '%E` 'Y hOP[OY�aO_ 'a 6,j _ 'a 7_ !l 8Y hO_ (a 6,j _ (a 7_ %l 8Y hOa 9_ 'a 6,%a :%�%a ;%_ (a 6,%a <%OPOPU ascr  ��ޭ