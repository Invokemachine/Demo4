   M S B A M L   `   `   `  ����C  ?DemoApp4, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:DemoApp4.WindowsDemoApp4.Windows  5   	   ;'clr-namespace:DemoApp4.Models;assembly=DemoApp4.Models  5   	   *    $DemoApp4.Windows.ClientServiceWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:DemoApp4.Windows     5   	   =	converter'clr-namespace:DemoApp4.Models;assembly=     5   	     � Title$  Записи��5	   	   $	��450��6   $	��800��6(    � 	Resources 5
      %   DemoApp4.Models.CutOffConverter   DiscountConverter   Cutoff*  $System.Windows.Controls.DataGridCell �� 
TargetType  
mainBorder �� Property �� Value �� Triggers �� Binding �� 	Converter	 �� Value��%�   &	        &	      7     5   
   $ 1��6>   �� 5   
   "  6   .�5      ��  � ��
 �����6+    5      �� 5       6   �� *Start+8   	 true5   @   .a�5      ��  � ��
 �  ��63   5      5      5      .��5      � 
 � RowDefinitions
 5   
   �� 5      $��1* �6   �� 5      $��8* �6    � ColumnDefinitions 5   
   �� 5      �� 5      .+�5   
   �� -   5        $��
backButton��5   !   $��
Назад��6   $��0��6L   �� 5    
   -   5        $��	addButton��5    +   $#��Добавить запись��6   $��1��6T   &   System.Windows.Controls.DataGrid  5!   
   -   5        $��serviceList��5!       $��1��6   $��2��63      	CellStyle 5"      �� 5#      "  6   .�5$      ��  � ��
 �����63    5%      �� 5&       6&   �� *Start+# [  	 true6n   .a�5'      ��  � ��
 �  ��6;   5(      5*      5,      5-      5.      