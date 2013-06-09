FasdUAS 1.101.10   ��   ��    k             l      ��  ��   {u
For details and documentation:
http://github.com/inkling/Subliminal

Copyright 2013 Inkling Systems, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

	http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
     � 	 	� 
 F o r   d e t a i l s   a n d   d o c u m e n t a t i o n : 
 h t t p : / / g i t h u b . c o m / i n k l i n g / S u b l i m i n a l 
 
 C o p y r i g h t   2 0 1 3   I n k l i n g   S y s t e m s ,   I n c . 
 
 L i c e n s e d   u n d e r   t h e   A p a c h e   L i c e n s e ,   V e r s i o n   2 . 0   ( t h e   " L i c e n s e " ) ; 
 y o u   m a y   n o t   u s e   t h i s   f i l e   e x c e p t   i n   c o m p l i a n c e   w i t h   t h e   L i c e n s e . 
 Y o u   m a y   o b t a i n   a   c o p y   o f   t h e   L i c e n s e   a t 
 
 	 h t t p : / / w w w . a p a c h e . o r g / l i c e n s e s / L I C E N S E - 2 . 0 
 
 U n l e s s   r e q u i r e d   b y   a p p l i c a b l e   l a w   o r   a g r e e d   t o   i n   w r i t i n g ,   s o f t w a r e 
 d i s t r i b u t e d   u n d e r   t h e   L i c e n s e   i s   d i s t r i b u t e d   o n   a n   " A S   I S "   B A S I S , 
 W I T H O U T   W A R R A N T I E S   O R   C O N D I T I O N S   O F   A N Y   K I N D ,   e i t h e r   e x p r e s s   o r   i m p l i e d . 
 S e e   t h e   L i c e n s e   f o r   t h e   s p e c i f i c   l a n g u a g e   g o v e r n i n g   p e r m i s s i o n s   a n d 
 l i m i t a t i o n s   u n d e r   t h e   L i c e n s e . 
   
  
 l     ��������  ��  ��        l      ��  ��   & 
Runs an Automation-derived trace template until its script finishes or times out,
saves the trace to the specified location, then quits.

The template to be run should already specify the script it expects 
to run, i.e. be a variant of the Automation trace template saved with 
a particular script.

Returns "true" if the tests ran to completion, "false" otherwise.

Usage: osascript run_template.scpt <template> <document> <timeout>
	<template> 	The path to the template to run.
	<document>	The path to save the trace document data to. This may already 
				exist, in which case a new Run will be added.
	<timeout>	The maximum duration for which to run the script before aborting.
				Specified in seconds and as a number rather than a string.
				Optional. If not specified, defaults to infinite.
     �  @ 
 R u n s   a n   A u t o m a t i o n - d e r i v e d   t r a c e   t e m p l a t e   u n t i l   i t s   s c r i p t   f i n i s h e s   o r   t i m e s   o u t , 
 s a v e s   t h e   t r a c e   t o   t h e   s p e c i f i e d   l o c a t i o n ,   t h e n   q u i t s . 
 
 T h e   t e m p l a t e   t o   b e   r u n   s h o u l d   a l r e a d y   s p e c i f y   t h e   s c r i p t   i t   e x p e c t s   
 t o   r u n ,   i . e .   b e   a   v a r i a n t   o f   t h e   A u t o m a t i o n   t r a c e   t e m p l a t e   s a v e d   w i t h   
 a   p a r t i c u l a r   s c r i p t . 
 
 R e t u r n s   " t r u e "   i f   t h e   t e s t s   r a n   t o   c o m p l e t i o n ,   " f a l s e "   o t h e r w i s e . 
 
 U s a g e :   o s a s c r i p t   r u n _ t e m p l a t e . s c p t   < t e m p l a t e >   < d o c u m e n t >   < t i m e o u t > 
 	 < t e m p l a t e >   	 T h e   p a t h   t o   t h e   t e m p l a t e   t o   r u n . 
 	 < d o c u m e n t > 	 T h e   p a t h   t o   s a v e   t h e   t r a c e   d o c u m e n t   d a t a   t o .   T h i s   m a y   a l r e a d y   
 	 	 	 	 e x i s t ,   i n   w h i c h   c a s e   a   n e w   R u n   w i l l   b e   a d d e d . 
 	 < t i m e o u t > 	 T h e   m a x i m u m   d u r a t i o n   f o r   w h i c h   t o   r u n   t h e   s c r i p t   b e f o r e   a b o r t i n g . 
 	 	 	 	 S p e c i f i e d   i n   s e c o n d s   a n d   a s   a   n u m b e r   r a t h e r   t h a n   a   s t r i n g . 
 	 	 	 	 O p t i o n a l .   I f   n o t   s p e c i f i e d ,   d e f a u l t s   t o   i n f i n i t e . 
      l     ��������  ��  ��        i        I      �������� (0 getscriptisrunning getScriptIsRunning��  ��    k            l     ��  ��    M G the "ScriptAgent" process is launched only while the script is running     �   �   t h e   " S c r i p t A g e n t "   p r o c e s s   i s   l a u n c h e d   o n l y   w h i l e   t h e   s c r i p t   i s   r u n n i n g      r          I    �� !��
�� .sysoexecTEXT���     TEXT ! m      " " � # # � i f   p g r e p   S c r i p t A g e n t   >   / d e v / n u l l ;   t h e n   e c h o   t r u e ;   e l s e   e c h o   f a l s e ;   f i��     o      ���� "0 scriptisrunning scriptIsRunning   $�� $ Z     % &�� ' % =    ( ) ( o    	���� "0 scriptisrunning scriptIsRunning ) m   	 
 * * � + +  t r u e & L     , , m    ��
�� boovtrue��   ' L     - - m    ��
�� boovfals��     . / . l     ��������  ��  ��   /  0 1 0 i    2 3 2 I      �������� "0 togglerecording toggleRecording��  ��   3 O     ! 4 5 4 O      6 7 6 I   �� 8��
�� .prcsclicuiel    ��� uiel 8 n     9 : 9 4    �� ;
�� 
chbx ; m    ����  : n     < = < 4    �� >
�� 
sgrp > m    ����  = n     ? @ ? 4    �� A
�� 
sgrp A m    ����  @ n     B C B 4    �� D
�� 
tbar D m    ����  C 4    �� E
�� 
cwin E m    ���� ��   7 4    �� F
�� 
prcs F m     G G � H H  I n s t r u m e n t s 5 m      I I�                                                                                  sevs  alis    z  Core                       ��GpH+   ��System Events.app                                               *���Y        ����  	                CoreServices    ���      ���     �� �� ��  5Core:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p  
  C o r e  -System/Library/CoreServices/System Events.app   / ��   1  J K J l     ��������  ��  ��   K  L M L i     N O N I     �� P��
�� .aevtoappnull  �   � **** P o      ���� 0 argv  ��   O k     Q Q  R S R l     �� T U��   T &   Ensure GUI scripting is enabled    U � V V @   E n s u r e   G U I   s c r i p t i n g   i s   e n a b l e d S  W X W O      Y Z Y r     [ \ [ c     ] ^ ] n     _ ` _ m   	 ��
�� 
ctnr ` l   	 a���� a I   	�� b��
�� .earsffdralis        afdr b  f    ��  ��  ��   ^ m    ��
�� 
ctxt \ o      ���� 0 	scriptdir 	scriptDir Z m      c c�                                                                                  MACS  alis    \  Core                       ��GpH+   ��
Finder.app                                                      ڷ�k"        ����  	                CoreServices    ���      �͒     �� �� ��  .Core:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p  
  C o r e  &System/Library/CoreServices/Finder.app  / ��   X  d e d l   ��������  ��  ��   e  f g f r     h i h l    j���� j b     k l k o    ���� 0 	scriptdir 	scriptDir l m     m m � n n 2 e n a b l e _ G U I _ s c r i p t i n g . s c p t��  ��   i o      ���� 40 enableguiscriptingscript enableGUIScriptingScript g  o p o r      q r q l    s���� s I   �� t��
�� .sysodsct****        scpt t l    u���� u c     v w v o    ���� 40 enableguiscriptingscript enableGUIScriptingScript w m    ��
�� 
alis��  ��  ��  ��  ��   r o      ���� *0 guiscriptingenabled GUIScriptingEnabled p  x y x Z  ! , z {���� z H   ! # | | o   ! "���� *0 guiscriptingenabled GUIScriptingEnabled { L   & ( } } m   & '��
�� boovfals��  ��   y  ~  ~ l  - -��������  ��  ��     � � � l  - -�� � ���   �   Open the trace template    � � � � 0   O p e n   t h e   t r a c e   t e m p l a t e �  � � � O   - @ � � � k   1 ? � �  � � � I  1 6������
�� .miscactvnull��� ��� null��  ��   �  ��� � I  7 ?�� ���
�� .aevtodocnull  �    alis � n   7 ; � � � 4   8 ;�� �
�� 
cobj � m   9 :����  � o   7 8���� 0 argv  ��  ��   � m   - . � ��                                                                                      @ alis    �  Core                       ��GpH+   ��bInstruments.app                                                 ��v͒��        ����  	                Applications    ���      ͓PQ     ��b ��+ ��* ��  ECore:Applications: Xcode.app: Contents: Applications: Instruments.app      I n s t r u m e n t s . a p p  
  C o r e  <Applications/Xcode.app/Contents/Applications/Instruments.app  / ��   �  � � � l  A A��������  ��  ��   �  � � � l  A A�� � ���   � * $ Tell Instruments to start recording    � � � � H   T e l l   I n s t r u m e n t s   t o   s t a r t   r e c o r d i n g �  � � � I   A F�������� "0 togglerecording toggleRecording��  ��   �  � � � l  G G��������  ��  ��   �  � � � l  G G�� � ���   � . ( Wait for Instruments to start recording    � � � � P   W a i t   f o r   I n s t r u m e n t s   t o   s t a r t   r e c o r d i n g �  � � � V   G \ � � � I  R W�� ���
�� .sysodelanull��� ��� nmbr � m   R S���� ��   � H   K Q � � I   K P�������� (0 getscriptisrunning getScriptIsRunning��  ��   �  � � � l  ] ]��������  ��  ��   �  � � � l  ] ]�� � ���   � I C Wait for Instruments to stop recording, with the specified timeout    � � � � �   W a i t   f o r   I n s t r u m e n t s   t o   s t o p   r e c o r d i n g ,   w i t h   t h e   s p e c i f i e d   t i m e o u t �  � � � r   ] b � � � m   ] ^��
�� boovtrue � o      ���� &0 recordingfinished recordingFinished �  � � � r   c l � � � I  c h������
�� .misccurdldt    ��� null��  ��   � o      ����  0 recordingstart recordingStart �  � � � r   m t � � � m   m p��
�� 
msng � o      ���� $0 recordingtimeout recordingTimeout �  � � � Z  u � � ����� � l  u | ����� � =  u | � � � l  u z ����� � I  u z�� ���
�� .corecnte****       **** � o   u v���� 0 argv  ��  ��  ��   � m   z {���� ��  ��   � r    � � � � l   � ����� � n    � � � � 4   � �� �
� 
cobj � m   � ��~�~  � o    ��}�} 0 argv  ��  ��   � o      �|�| $0 recordingtimeout recordingTimeout��  ��   �  � � � V   � � � � � I  � ��{ ��z
�{ .sysodelanull��� ��� nmbr � m   � ��y�y �z   � F   � � � � � I   � ��x�w�v�x (0 getscriptisrunning getScriptIsRunning�w  �v   � l  � � ��u�t � G   � � � � � l  � � ��s�r � =  � � � � � o   � ��q�q $0 recordingtimeout recordingTimeout � m   � ��p
�p 
msng�s  �r   � l  � � ��o�n � A   � � � � � l  � � ��m�l � \   � � � � � l  � � ��k�j � I  � ��i�h�g
�i .misccurdldt    ��� null�h  �g  �k  �j   � o   � ��f�f  0 recordingstart recordingStart�m  �l   � o   � ��e�e $0 recordingtimeout recordingTimeout�o  �n  �u  �t   �  � � � l  � ��d�c�b�d  �c  �b   �  � � � Z   � � � ��a�` � I   � ��_�^�]�_ (0 getscriptisrunning getScriptIsRunning�^  �]   � k   � � � �  � � � I   � ��\�[�Z�\ "0 togglerecording toggleRecording�[  �Z   �  ��Y � r   � � � � � m   � ��X
�X boovfals � o      �W�W &0 recordingfinished recordingFinished�Y  �a  �`   �  � � � l  � ��V�U�T�V  �U  �T   �  � � � l  � ��S � ��S   �   Save the trace and quit    � � � � 0   S a v e   t h e   t r a c e   a n d   q u i t �  � � � r   � � � � � l  � � ��R�Q � c   � � � � � 4   � ��P �
�P 
psxf � l  � � ��O�N � n   � � � � � 4   � ��M �
�M 
cobj � m   � ��L�L  � o   � ��K�K 0 argv  �O  �N   � m   � ��J
�J 
ctxt�R  �Q   � o      �I�I 0 filename   �  � � � O   � �  � I  ��H
�H .coresavenull���     obj  4   � ��G
�G 
docu m   � ��F�F  �E�D
�E 
kfil o   � ��C�C 0 filename  �D    m   � ��                                                                                      @ alis    �  Core                       ��GpH+   ��bInstruments.app                                                 ��v͒��        ����  	                Applications    ���      ͓PQ     ��b ��+ ��* ��  ECore:Applications: Xcode.app: Contents: Applications: Instruments.app      I n s t r u m e n t s . a p p  
  C o r e  <Applications/Xcode.app/Contents/Applications/Instruments.app  / ��   �  l �B	�B   F @ Sometimes Applescript can time out trying to quit Instruments,    	 �

 �   S o m e t i m e s   A p p l e s c r i p t   c a n   t i m e   o u t   t r y i n g   t o   q u i t   I n s t r u m e n t s ,    l �A�A     so we kill it instead    � ,   s o   w e   k i l l   i t   i n s t e a d  I �@�?
�@ .sysoexecTEXT���     TEXT m   � * k i l l a l l   " I n s t r u m e n t s "�?    l �>�=�<�>  �=  �<   �; L   o  �:�: &0 recordingfinished recordingFinished�;   M �9 l     �8�7�6�8  �7  �6  �9       �5�5   �4�3�2�4 (0 getscriptisrunning getScriptIsRunning�3 "0 togglerecording toggleRecording
�2 .aevtoappnull  �   � **** �1 �0�/�.�1 (0 getscriptisrunning getScriptIsRunning�0  �/   �-�- "0 scriptisrunning scriptIsRunning  "�, *
�, .sysoexecTEXT���     TEXT�. �j E�O��  eY f �+ 3�*�) !�(�+ "0 togglerecording toggleRecording�*  �)     !  I�' G�&�%�$�#�"
�' 
prcs
�& 
cwin
�% 
tbar
�$ 
sgrp
�# 
chbx
�" .prcsclicuiel    ��� uiel�( "� *��/ *�k/�k/�k/�k/�l/j UU �! O� �"#�
�! .aevtoappnull  �   � ****�  0 argv  �  " �� 0 argv  #   c���� m���� ������������
�	��������
� .earsffdralis        afdr
� 
ctnr
� 
ctxt� 0 	scriptdir 	scriptDir� 40 enableguiscriptingscript enableGUIScriptingScript
� 
alis
� .sysodsct****        scpt� *0 guiscriptingenabled GUIScriptingEnabled
� .miscactvnull��� ��� null
� 
cobj
� .aevtodocnull  �    alis� "0 togglerecording toggleRecording� (0 getscriptisrunning getScriptIsRunning
� .sysodelanull��� ��� nmbr� &0 recordingfinished recordingFinished
� .misccurdldt    ��� null�  0 recordingstart recordingStart
� 
msng�
 $0 recordingtimeout recordingTimeout
�	 .corecnte****       ****
� 
bool� 
� 
psxf� 0 filename  
� 
docu
� 
kfil
� .coresavenull���     obj 
� .sysoexecTEXT���     TEXT�� )j �,�&E�UO��%E�O��&j E�O� fY hO� *j O��k/j UO*j+ O h*j+ kj [OY��OeE` O*j E` Oa E` O�j m  ��m/E` Y hO 7h*j+ 	 !_ a  
 *j _ _ a &a &a j [OY��O*j+  *j+ OfE` Y hO*a ��l/E/�&E` O� *a k/a _ l UOa j O_ ascr  ��ޭ