   M S B A M L   `   `   `  ����Q  MQuan-Ly-Ban-Ve-May-Bay, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:Quan_Ly_Ban_Ve_May_Bay.PagesQuan_Ly_Ban_Ve_May_Bay.Pages  5      '    !Quan_Ly_Ban_Ve_May_Bay.Pages.Home   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      6local*clr-namespace:Quan_Ly_Ban_Ve_May_Bay.Pages  5        N� Title$
  Home��5
      .��5      � .+�5   
   �� ��5      �� 5       �� ImageSource$ /Images/bg2.png��6   5      � 5   
    � RowDefinitions 5      �� 5      $��6* �6    �� 5      $	��150 �6    �� 5      .+�5      � $��0��6   5      � 5      $��0,0,0,5q�6   $��1��6$    � ColumnDefinitions 5      �� 5      $	��10* �6'   �� 5      $
��180* �6'   �� 5       $
��185* �6'   �� 5!      $
��185* �6'   �� 5"      $
��185* �6'   �� 5#      $
��185* �6'   �� 5$      $	��10* �6'   .+�5(      ��  �� CornerRadius$ 25��6   $��1��6,   ��5)      �� 5*      .��5+      �  � Color$ #bfe063��6+    � Offset$	 0.7Q�6;   � 5,      $ #a6d71b��6+   $ 0Q�6;   5-      ._�5/      �� .+�51      �� $��
20 25 20 0q�6$   $��50��68   $��Khởi hành��6D   
�������$��30(�6h   �� 52      -   5        $��cbbDeparture��52   #   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Thành phố��53   !   $��20(�54   !   $��Center=�6/   ���#3f7e32 &  "MaterialDesignFloatingHintComboBox#��[  55   !   $��	20 0 20 0q�56   !   58      59      5:      �� 5=      $ 25��6   $��2��6,   $��10 0 0 0q�6<   ��5>      �� 5?      .��5@      � $ #bfe063��6+   $	 0.7Q�6;   � 5A      $ #a6d71b��6+   $ 0Q�6;   5B      ._�5D      �� .+�5E      �� $��
20 25 20 0q�6$   $��50��68   $��Điểm đến��6D   
�������$��30(�6g   �� 5F      -   5        $��cbbDestination��5F   #   $ Thành phố��5G   !   $��20(�5H   !   $��Center=�6/   ���#3f7e32#��[  5I   !   $��	20 0 20 0q�5J   !   5L      5M      5N      �� 5P      $ 25��6   $��3��6,   $��10 0 0 0q�6<   ��5Q      �� 5R      .��5S      � $ #bfe063��6+   $	 0.7Q�6;   � 5T      $ #a6d71b��6+   $ 0Q�6;   5U      ._�5W      �� .+�5Y      �� $��
20 25 20 0q�6$   $��50��68   $��Ngày��6D   
�������$��30(�5Z   C   (  "System.Windows.Controls.DatePicker  5[      -   5        $
��date��5_   )   $��20(�5[   %   $��
20 20 20 0q�63   $ Chọn ngày��5\   )   ���#3f7e32$��Center=�5]   )     MaterialDesignDatePicker#��[ 5^   )   5_   )   5`      5c      �� 5f      $ 25��6   $��4��6,   $��10,0,0,0q�6<   ��5g      �� 5h      .��5i      � $ #bfe063��6+   $	 0.7Q�6;   � 5j      $ #a6d71b��6+   $ 0Q�6;   5k      ._�5m      �� .+�5n      �� $��
20 25 20 0q�6$   $��50��68   $��
Hạng vé��6D   
�������$��30(�6f   �� 5o      -   5        $��cbbClass��5o   #   $ Chọn hạng vé��5p   !   $��	20 0 20 0q�5q   !   $��20(�64   $��Center=�6B   ���#3f7e32#��[  5r   !   5t      5u      5v      �� 5x      $ 25��6   $��5��6,   $��10 0 0 0q�6<   ��5y      �� 5z      .��5{      � $ #bfe063��6+   $	 0.7Q�6;   � 5|      $ #a6d71b��6+   $ 0Q�6;   5}      ._�5      �� .+�5�      �� $��
20 25 20 0q�6$   $��50��68   $��Số lượng��6D   
�������$��30(�6g   �� 5�      -   5        $��cbbQuantity��5�   #   $��	20 0 20 0q�5�   !   $��20(�64   $��Center=�6B   ���#3f7e32#��[  5�   !   .@�6]   .@�5�      
Nhi Lê ��  �� 
IsSelected$
 True��5�   %   .��67   15�      �� 5�      .��6+   25�      �� 5�      .��6+   35�      �� 5�      .��6+   45�      �� 5�      .��6+   55�      �� 5�      .��6+   65�      �� 5�      .��6+   75�      �� 5�      .��6+   85�      �� 5�      .��6+   95�      �� 5�      .��6+   105�      �� 5�      .��6+   115�      �� 5�      .��6+   125�      �� 5�      .��6+   135�      �� 5�      .��6+   145�      �� 5�      .��6+   155�      5�      5�      5�      5�      � 5�      $��2��6   .+�5�      �� $ 25��6   $��50��6-   $	��200��69   ��5�      �� 5�      .��5�      � $ #bfe063��6+   $	 0.7Q�6;   � 5�      $ #a6d71b��6+   $ 0Q�6;   5�      ._�5�      �� -   5        $	��200��5�      $��50��6"   
������ 
������ $��Tìm kiếm��5�      
�������$��30(�6<   $	��Top=�6b   5�      5�      5�      5�      5�      5�      