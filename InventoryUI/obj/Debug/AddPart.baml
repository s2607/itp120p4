   M S B A M L   `   `   `  ����S  OEntityFrameworkInventory, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nulleHclr-namespace:EntityFrameworkInventory;assembly=EntityFrameworkInventoryEntityFrameworkInventory  5   �    InventoryUI   InventoryUI.AddPart   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     6F   mEntityFrameworkInventoryHclr-namespace:EntityFrameworkInventory;assembly=EntityFrameworkInventory     6�   -   5          � Title$  AddPart��5   	   $	��335��6   $	��310��6&    � 	Resources 5         partViewSource��%   &	        �� 5   
   6   5      .��5	      � .+�5   
   � -   5         �Name$ partGrid��5      $
��Left=�6"    � DataContext# �   6=   $��10,0,0,0q�6l    � RowDefinitions 5      �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6     � ColumnDefinitions 5      �� 5      $
��Auto �6#   �� 5      $
��Auto �6#   .+�5      �� $��Center=�6   $��0��6/   $��3q�6<   $
��Left=�6G   $��0��6b   $��Current Value:��6r   �� 5      -   5         ��Name$ currentValueTextBox��5      $	��120��63   $��Center=�6?   $��0��6�   $��3q�6�   $��23��6�   $
��Left=�6�   $��1��6�   ��6Z   �� *CurrentValue+ �� Mode$ TwoWay=� �� NotifyOnValidationError . 	 �� ValidatesOnExceptions	 . 6�   �� 5      $��Center=�6   $��1��6/   $��3q�6<   $
��Left=�6G   $��0��6b   $��Name:��6r   �� 5      -   5        $ nameTextBox��5      $	��120��6+   $��Center=�67   $��1��6�   $��3q�6�   $��23��6�   $
��Left=�6�   $��1��6�   ��6R   �� *Name+$ TwoWay=� . 	 . 6�   �� 5      $��Center=�6   $��3��6/   $��3q�6<   $
��Left=�6G   $��0��6b   $��Price:��6r   �� 5      -   5        $ priceTextBox��5      $	��120��6,   $��Center=�68   $��3��6�   $��3q�6�   $��23��6�   $
��Left=�6�   $��1��6�   ��6S   �� *Price+$ TwoWay=� . 	 . 6�   �� 5      $��Center=�6   $��4��6/   $��3q�6<   $
��Left=�6G   $��0��6b   $��	Quantity:��6r   �� 5       -   5        $ quantityTextBox��5       $	��120��6/   $��Center=�6;   $��4��6�   $��3q�6�   $��23��6�   $
��Left=�6�   $��1��6�   ��6V   �� *
Quantity+$ TwoWay=� . 	 . 6�   �� 5!      $��Center=�6   $��5��6/   $��3q�6<   $
��Left=�6G   $��0��6b   $��Termination Date:��6r   (  "System.Windows.Controls.DatePicker  5"      -   5        
  Name$
 terminationDateDatePicker��5"      $��Center=�6<   $��5��6�   $��3q�6�   $
��Left=�6�   $��1��6�      SelectedDate 6W   �� *TerminationDate+$ TwoWay=� . 	 . 6�   �� 5#      -   5        $
��Save��5#      $
��Left=�6$   $��6��6?   $��23q�6L   $��Center=�6X   $��75��6s   $��1��6~   6�   �� 5$      -	   5        $��
ErrorLabel��5$      $	��!!!��6&   $y�Hidden=�64   $
��Left=�6H   $��
10,66,0,-6q�6c   $��6��6w   $	��Top=�6�   $��2��6�   $	��216��6�   $��39��6�   5'      5)      5*      