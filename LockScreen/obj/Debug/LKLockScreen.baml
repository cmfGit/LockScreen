   M S B A M L   `   `   `  ����E  ALockScreen, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:LockScreen
LockScreen  5   	   A%clr-namespace:LockScreen.UserControlsLockScreen.UserControls  5   	   =#clr-namespace:LockScreen.ConvertersLockScreen.Converters  5   	       LockScreen.LKLockScreen   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:LockScreen     5   	   4uc%clr-namespace:LockScreen.UserControls     5   	   7convert#clr-namespace:LockScreen.Converters     5   	   -   5          �Name$  mw��5   :    � Title$ 锁屏界面��5
   	    � WindowState$ Normal=�6   
������  � AllowsTransparency .  � WindowStyle$
 None=�6^    � 
ResizeMode$ NoResize=�6q    � Topmost .  $	��900��6�    � 	Resources 5      )   #LockScreen.Converters.TypeToVisible   typetovisible��%   &	          5   
   6    5      .��5      � ��6   �� *BackgroundColor+ �� Mode$ TwoWay=�.+�5   
   �� -   5        	 ��Name$	 content��5      $��Stretch=�6*   $��Stretch=�6F   5      � 5   
   .+�5      ,   &LockScreen.UserControls.ucScreenUnlock  -   5        
  Name$
 screenUnlock��5   �   $��Center=�6�   $��Center=�6�   $	��300��6�   $	��400��6�      Color$ White��5   }      	PointSize$
 20.0Q�6�   y�5   !   ��  �� Path$ PassType� �� 	Converter# [   �� ConverterParameter$
 draw��   
PointArray 5      ��  �� ElementName$ mw��$ 
PointArray�$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�   	Operation 5      �� $ mw��$ 	Operation�$ TwoWay=�$ PropertyChanged=�5      (   "LockScreen.UserControls.ucKeyboard  5      -   5          Name$ 	numUnlock��5   �   $��Center=�6�   $��Center=�6�   y�6   �� $ PassType�# [  $	 num��5      5      5      5      