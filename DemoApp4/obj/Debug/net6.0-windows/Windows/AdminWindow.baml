   M S B A M L   `   `   `  ����C  ?DemoApp4, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;'clr-namespace:DemoApp4.Models;assembly=DemoApp4.Models  5   	   #clr-namespace:DemoApp4DemoApp4  5   	       DemoApp4.AdminWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   =	converter'clr-namespace:DemoApp4.Models;assembly=     5   	   (localclr-namespace:DemoApp4     5   	     � Title$  Окно услуг��5	   	   $	��450��6   $	��800��6)    � 	Resources 5
      %   DemoApp4.Models.CutOffConverter   DiscountConverter   Cutoff �� 
TargetType  	saleBlock �� Property �� Value �� Triggers �� Binding �� 	Converter	 �� Value  
mainBorder  sale  	nullImage
 �� 	UriSource��%�  &	        &	      7   &	 �    7   &	 �    7   &	 b      5   
   $ 1��6>   �� 5   
   " ��6   .�5      ��  � ��$
 None{�60   �� 5       � y�$ Hidden=�6+   �� 5       � ��$ Comic Sans MS)�6+   �� 5       � ��$ 18(�6)   �� 5       �@��TextAlignment$ Center=�6.    5      �� 5       6   �� *
Discount+8   	 true5   @   .a�5      ��  � ��$ Strikethrough{�68   �� 5       � y�$ Visible=�63   5      5      �� 5   
   " ��6   .�5      ��  � ��
 �����6+    5      �� 5       6   �� *
Discount+8   	 true5   @   .a�5      ��  � �� �#7fff0063   5       5"      �� 5#   
   " ��6   .�5$      ��  � y�$ Hidden=�6+    5%      �� 5&       6   �� *
Discount+8   	 true5'   @   .a�5(      ��  � y�$ Visible=�63   5)      5+      �� 5,   
   $ 
 /Resources/school_logo.png?�6(   5-      .��5.      �  � ColumnDefinitions 5/   
   �� 50      �� 51      �� 52      �� 53      �� 54      �� 55       � RowDefinitions 57   
   �� 58      $��1* �6   �� 59      $��8* �6   �� 5:      $��1* �6   .+�5<   
   �� -   5        $��
backButton��5<   -   $��
Выйти��6   $	��100��6!   $��0��6?   $��0��6L   �� 5>   
   -   5        $��searchTextBox��5>      $	��100��6'   $��0��63   $��1��6@   6P   �� 5@   
   -   5        $��discountFilter��5@      $	��100��6)   $��30��65   $��0��6B   $��2��6O   6_   �� 5B   
   -   5        $��costSortComboBox��5B      $	��100��6+   $��30��67   $��0��6C   $��3��6P   6`   �� 5D   
   -   5        $��	addButton��5D      $��0��6"   $��4��6/   $��Добавить��6?   $y�Hidden=�6R   �� 5F   
   -   5        $��recordButton��5F      $��0��6%   $��5��62   $��Записи��6B   $y�Hidden=�6S   �� 5H   
   -   5        $��recordAmountLabel��5H      $��5��6)   �� 5J   
   -   5         ��Name$ 	AddButton��5J      $��Добавить��6$   $��0��67   $��2��6G   $	��110��6T   6`   �� 5L   
   -	   5        $ 
EditButton��5L      $ ��Редактировать��6%   $��14(�6=   $��1��6K   $��2��6[   $	��110��6h   6t   �� 5N   
   -
   5        $ DeleteButton��5N      $��Удалить��6'   $��2��69   $��2��6I   $	��110��6V   6b   �� 5P   
   -   5        $ OrderButton��5P      $��Заявки��6&   $��3��67   $��2��6G   $	��110��6T   6`   �� 5R   
   -   5         ��Name$ ServicesList��5R   4   $��6��6   $��1��6'   $��Disabled=�6J   $��Stretch=�6�   ��5S      �� 5T      .R�5U      �� 
���   �$��1q�61   #��[ 6E   ._�5V      �  5W      �� 5X   "   $��3* �63   �� 5Y   "   $��6* �63   �� 5Z   "   $��2* �63   .+�5]      �� 
���   �$��1q�69   $��0��6M   $	��125��6]   ._�5^   "   �� ��6(   ��  �� Path$ Photo� �� FallbackValue# [ 5_      �� 5a      $��1��6%   
���   �$��1q�6I   ._�5b   "   �  5c   &   �� 5d   *   $��2* �68   �� 5e   *   $��2* �68   �� 5f   *   $��2* �68   �� 5g   *   $��2* �68   .+�5i   &   �� $��0��6,   ��69   �� *Name+�� 5j   &   $��1��61    �� Orientation$ 
Horizontal=�6>   .+�5k   *   �� #��[ 6J   ��64   �� *Cost+6J   �� 5l   *   ��60   �� *CostWithDiscount+�� 5m   *   $��Рублей за��60   �� 5n   *   ��60   �� *
Duration+�� 5o   *   $��минут.��60   5p   '   �� 5r   &   $��2��61   $ 
Horizontal=�6>   .+�5s   *   �� $��Скидка��60   #��[ 6A   �� 5t   *   $
��Left=�60   #��[ 6p   ��6S   �� *
Discount+6p   5u   '   5v   #   5w      5x      5y      5z      5|      5}      5~      