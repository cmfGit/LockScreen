   M S B A M L   `   `   `  ����E  ALockScreen, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:LockScreen
LockScreen  5   	   =#clr-namespace:LockScreen.ConvertersLockScreen.Converters  5   	   A%clr-namespace:LockScreen.UserControlsLockScreen.UserControls  5   	       LockScreen.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:LockScreen     5   	   7convert#clr-namespace:LockScreen.Converters     5   	   4uc%clr-namespace:LockScreen.UserControls     5   	   -   5          �Name$  window��5   0    � Title$ 锁屏设置��5
   	    � 
ResizeMode$ CanMinimize=�6    � WindowStartupLocation$ CenterScreen=�6/    � ShowInTaskbar .   � SizeToContent$ WidthAndHeight=�6�    � 	Resources 5       �� 
TargetType �� Property	 �� Value1   +LockScreen.Converters.BackGroundTypeConvert   
typeConver)   #LockScreen.Converters.TypeToVisible  typetovisible��%�   '	�       &	  I     &	 \     �� 5   
   " 	�6   .�5      ��  � ��$		 0 5q�6'   5        5   
   6(     5   
   6    5      .��5      � 
 � ColumnDefinitions
 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5   
   ��  �� Orientation$ Vertical=�6   .+�5      �� $ 
Horizontal=�6   $��10q�62   .+�5      �� $��	无操作��6   �� 5      $��50��6C   $
��10 0q�6N    �� TextAlignment$ Center=�6\   ��6   �� *SeccondLock+ �� Mode$ TwoWay=�6\   �� 5      $��秒后进行锁屏��6   5      �� 5      $��背景类型��6   $��10q�6%   .��5      �� $ Vertical=�6   $
��0 10q�64   .+�5       	� $��	图片组��6"    d� 	IsChecked 60   �� *
BackType+$ TwoWay=� �� 	Converter# [   �� ConverterParameter$	 img��	� 5!      $��	Gif图片��6"    62   �� *
BackType+$ TwoWay=�# [  $	 gif��	� 5"      $��视频��6"    6/   �� *
BackType+$ TwoWay=�# [  $ video���� 5#      $ 
Horizontal=�6!   $��0 10 0 0q�6:   .+�5$      �� $��路径:��6$   �� 5%      $	��5 0q�6"   $	��200��6U   ��6/   �� *
FilePath+$ TwoWay=�6U   �� 5&      -   5        $��/Images/dir.png��5&       $��8 0 0 0q�69   $��20��6J   $��20��6U    � Cursor$
 Hand��6a   6o   5'      5(      5)      �� 5*      $��锁屏密码类型��6   $��10q�6'   .��5+      �� $
��0 10q�6   .+�5,      	� $��数字密码��6"    61   �� *
PassType+$ TwoWay=�# [  $	 num��	� 5-      $��图案密码��6"    61   �� *
PassType+$ TwoWay=�# [  $
 draw��5.      5/      � 50      $��0 0 0 10q�6   $��Bottom=�6&   $��Center=�6A   .+�51      �� -   5        $��确定��51   .   $��75��6;   $��30��6F   $��Center=�6R   �� 52      -   5        $��	250 0 0 0q�52      ��53      �� 54      " ��6    .�55      ��  � ��	 56   "   �� 57   &    �� 
TargetType" ��66   .R�58   *   ��  ��Name$	 txt��6>   $��>>��64   $��Center=�6K    �� Triggers 59   *   P� 5:   .    P� Property �@J�IsMouseOver P� Value . . �5;   2   ��  �� 
TargetName$	 txt��6_    � ��	 �#3BCFFF5<   /   P� 5=   .    �@d�	IsChecked$
 TrueY�6K   . �5>   2   �� $	 txt��6Z    � ��$	 <<��6I   6Z   5?   /   P� 5@   .    �@d�	IsChecked$ falseY�6K   . �5A   2   �� $	 txt��6Z    � ��$	 >>��6I   6Z   5B   /   5D   '   5F      5G      5I      5J      5K      �� 5N   
   -   5         ��Name$ stackpanelSetting��5N   1   $��1��6   $	��250��6%   $y�	Collapsed=�6L   .+�5O      �� $ 
Horizontal=�6   $��10q�62   .+�5P      �� $��背景颜色��6   �� 5Q      
���  ��$��15��6*   ���#eaeaea$��1q�6K   $��15��6_   $��10 0 0 0q�6k   5R      �� 5S      $ 
Horizontal=�6   $��10q�62   .+�5T      �� $��背景填充类型��6   $��Center=�6*   �� 5U      $	��100��6    �� SelectedIndex$ 0��6'   $��Center=�6:   $��10 0 0 0q�6U   .@�5V      �� $
��Fill��6#   �� 5W      $
��None��6#   �� 5X      $��Uniform��6#   �� 5Y      $��UniformToFill��6#   5Z      5[      �� 5\      $��设置密码��6   $��10q�6%   .��5]      � $��10q�6   .+�5_      �� $ 
Horizontal=�6!   y�6:   �� *
PassType+$ TwoWay=�# [ $	 num��.+�5`      �� $��密码��6$   �� 5a      -   5         ��Name$ txtPwd��5a   .   $	��160��6"   $
��Left=�6>   $	��Top=�6Y   $��5 0 0 0q�6q   5b      ,   &LockScreen.UserControls.ucScreenUnlock  5d      -   5          Name$ ucScreenUnlock��5e   (      	Operation$ Remember=�5d   (      Color$ Black��5e   �      	PointSize$
 15.0Q�6�   $	��160��6�   $	��160��6�   y�5d   =   �� *
PassType+$ TwoWay=�# [ $
 draw��   
PointArray 5e   @   �� *
PointArray+  �� ElementName$  window��$ TwoWay=�! �� UpdateSourceTrigger$! PropertyChanged=�6�   5f      5g      5h      5i      5j      