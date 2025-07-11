FasdUAS 1.101.10   ��   ��    k             l     ��  ��    6 0 Step 1: Get the current Finder process ID (PID)     � 	 	 `   S t e p   1 :   G e t   t h e   c u r r e n t   F i n d e r   p r o c e s s   I D   ( P I D )   
  
 l     ����  r         I    �� ��
�� .sysoexecTEXT���     TEXT  m        �    p g r e p   - x   F i n d e r��    o      ���� 0 	finderpid 	finderPID��  ��        l     ��������  ��  ��        l     ��  ��    F @ Step 2: Define the file path to store the last known Finder PID     �   �   S t e p   2 :   D e f i n e   t h e   f i l e   p a t h   t o   s t o r e   t h e   l a s t   k n o w n   F i n d e r   P I D      l    ����  r        l    ����  b         l    !���� ! I   �� " #
�� .earsffdralis        afdr " m    	��
�� afdmtemp # �� $��
�� 
rtyp $ m   
 ��
�� 
ctxt��  ��  ��     m     % % � & & " l a s t F i n d e r P I D . t x t��  ��    o      ���� 0 pidfile pidFile��  ��     ' ( ' l     ��������  ��  ��   (  ) * ) l     �� + ,��   + < 6 Step 3: Read the lastPID from the file (if it exists)    , � - - l   S t e p   3 :   R e a d   t h e   l a s t P I D   f r o m   t h e   f i l e   ( i f   i t   e x i s t s ) *  . / . l    0���� 0 r     1 2 1 m    ��
�� boovtrue 2 o      ���� 40 shouldrundefaultscommand shouldRunDefaultsCommand��  ��   /  3 4 3 l   N 5���� 5 Q    N 6 7 8 6 k    A 9 9  : ; : r    % < = < I   #�� >��
�� .rdwropenshor       file > 4    �� ?
�� 
file ? o    ���� 0 pidfile pidFile��   = o      ���� 0 fileref fileRef ;  @ A @ r   & - B C B I  & +�� D��
�� .rdwrread****        **** D o   & '���� 0 fileref fileRef��   C o      ���� 0 lastpid lastPID A  E F E I  . 3�� G��
�� .rdwrclosnull���     **** G o   . /���� 0 fileref fileRef��   F  H I H l  4 4��������  ��  ��   I  J�� J Z   4 A K L���� K =  4 7 M N M o   4 5���� 0 lastpid lastPID N o   5 6���� 0 	finderpid 	finderPID L k   : = O O  P Q P l  : :�� R S��   R * $ Same session; don't run the command    S � T T H   S a m e   s e s s i o n ;   d o n ' t   r u n   t h e   c o m m a n d Q  U�� U r   : = V W V m   : ;��
�� boovfals W o      ���� 40 shouldrundefaultscommand shouldRunDefaultsCommand��  ��  ��  ��   7 R      ������
�� .ascrerr ****      � ****��  ��   8 k   I N X X  Y Z Y l  I I�� [ \��   [ , & File doesn't exist or can't be read;     \ � ] ] L   F i l e   d o e s n ' t   e x i s t   o r   c a n ' t   b e   r e a d ;   Z  ^ _ ^ l  I I�� ` a��   `   proceed and write it later    a � b b 4 p r o c e e d   a n d   w r i t e   i t   l a t e r _  c�� c r   I N d e d m   I L f f � g g   e o      ���� 0 lastpid lastPID��  ��  ��   4  h i h l     ��������  ��  ��   i  j k j l     �� l m��   l I C Step 4: If it's a new session, run the command and update the file    m � n n �   S t e p   4 :   I f   i t ' s   a   n e w   s e s s i o n ,   r u n   t h e   c o m m a n d   a n d   u p d a t e   t h e   f i l e k  o p o l  O � q���� q Z   O � r s���� r o   O P���� 40 shouldrundefaultscommand shouldRunDefaultsCommand s k   S � t t  u v u I  S Z�� w��
�� .sysoexecTEXT���     TEXT w m   S V x x � y y z d e f a u l t s   w r i t e   c o m . a p p l e . f i n d e r   A p p l e S h o w A l l F i l e s   - b o o l   f a l s e��   v  z { z l  [ [��������  ��  ��   {  | } | l  [ [�� ~ ��   ~ 0 * Save the current PID for future reference     � � � T   S a v e   t h e   c u r r e n t   P I D   f o r   f u t u r e   r e f e r e n c e }  ��� � Q   [ � � ��� � k   ^ � � �  � � � r   ^ l � � � I  ^ j�� � �
�� .rdwropenshor       file � 4   ^ b�� �
�� 
file � o   ` a���� 0 pidfile pidFile � �� ���
�� 
perm � m   e f��
�� boovtrue��   � o      ���� 0 fileref fileRef �  � � � l  m v � � � � I  m v�� � �
�� .rdwrseofnull���     **** � o   m n���� 0 fileref fileRef � �� ���
�� 
set2 � m   q r����  ��   �   Clear existing content    � � � � .   C l e a r   e x i s t i n g   c o n t e n t �  � � � I  w ��� � �
�� .rdwrwritnull���     **** � o   w x���� 0 	finderpid 	finderPID � �� ���
�� 
refn � o   { |���� 0 fileref fileRef��   �  ��� � I  � ��� ���
�� .rdwrclosnull���     **** � o   � ����� 0 fileref fileRef��  ��   � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  ��  ��  ��   p  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � U Odo shell script "defaults write com.apple.finder AppleShowAllFiles -bool false"    � � � � � d o   s h e l l   s c r i p t   " d e f a u l t s   w r i t e   c o m . a p p l e . f i n d e r   A p p l e S h o w A l l F i l e s   - b o o l   f a l s e " �  ��� � l  �  ����� � O   �  � � � k   � � � �  � � � r   � � � � � 1   � ���
�� 
sele � o      ���� 0 selecteditems selectedItems �  ��� � Z   � � � ��� � � =  � � � � � o   � ����� 0 selecteditems selectedItems � J   � �����   � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � h C a u g h t   y a   l a l a l a !   N o   f i l e   o r   f o l d e r   s e l e c t e d   h o o m i n . � �� � �
�� 
btns � J   � � � �  ��� � m   � � � � � � �   t r y   a g a i n   h o o m i n��   � �� ���
�� 
dflt � m   � ����� ��  ��   � k   � � � �  � � � X   � � ��� � � k   � � � �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
psxp � l  � � ����� � c   � � � � � o   � ��� 0 anitem anItem � m   � ��~
�~ 
alis��  ��   � o      �}�} 0 thepath thePath �  ��| � I  � ��{ ��z
�{ .sysoexecTEXT���     TEXT � b   � � � � � m   � � � � � � �  c h f l a g s   h i d d e n   � n   � � � � � 1   � ��y
�y 
strq � o   � ��x�x 0 thepath thePath�z  �|  �� 0 anitem anItem � o   � ��w�w 0 selecteditems selectedItems �  ��v � l  � ��u�t�s�u  �t  �s  �v  ��   � m   � � � ��                                                                                  MACS  alis    8  Untitled                   �<u�BD ����
Finder.app                                                     �����<u�        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    U n t i t l e d  &System/Library/CoreServices/Finder.app  / ��  ��  ��  ��       �r � ��r   � �q
�q .aevtoappnull  �   � **** � �p ��o�n � ��m
�p .aevtoappnull  �   � **** � k      � �  
 � �   � �  . � �  3 � �  o � �  ��l�l  �o  �n   � �k�k 0 anitem anItem � * �j�i�h�g�f�e %�d�c�b�a�`�_�^�]�\�[ f x�Z�Y�X�W�V ��U�T ��S ��R�Q�P�O�N�M�L�K�J ��I
�j .sysoexecTEXT���     TEXT�i 0 	finderpid 	finderPID
�h afdmtemp
�g 
rtyp
�f 
ctxt
�e .earsffdralis        afdr�d 0 pidfile pidFile�c 40 shouldrundefaultscommand shouldRunDefaultsCommand
�b 
file
�a .rdwropenshor       file�` 0 fileref fileRef
�_ .rdwrread****        ****�^ 0 lastpid lastPID
�] .rdwrclosnull���     ****�\  �[  
�Z 
perm
�Y 
set2
�X .rdwrseofnull���     ****
�W 
refn
�V .rdwrwritnull���     ****
�U 
sele�T 0 selecteditems selectedItems
�S 
btns
�R 
dflt�Q 
�P .sysodlogaskr        TEXT
�O 
kocl
�N 
cobj
�M .corecnte****       ****
�L 
alis
�K 
psxp�J 0 thepath thePath
�I 
strq�m�j E�O���l �%E�OeE�O +*��/j E�O�j E�O�j O��  fE�Y hW X  a E�O� Aa j O -*��/a el E�O�a jl O�a �l O�j W X  hY hOa  g*a ,E` O_ jv  a a a kva ka   !Y < 7_ [a "a #l $kh  �a %&a &,E` 'Oa (_ 'a ),%j [OY��OPU ascr  ��ޭ