   M S B A M L   `   `   `  ����S  OEntityFrameworkInventory, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nulleHclr-namespace:EntityFrameworkInventory;assembly=EntityFrameworkInventoryEntityFrameworkInventory  5   �    InventoryUI   InventoryUI.Allparts   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     6F   mEntityFrameworkInventoryHclr-namespace:EntityFrameworkInventory;assembly=EntityFrameworkInventory     6�   -   5          � 
ResizeMode$  NoResize=�5   	    � Title$ Allparts��5   	   $	��632��6   $	��590��6'    � 	Resources 5         partViewSource��%   &	        �� 5	   
   6   5
      .��5      �  � DataContext# [  6   $��0,0,-8,3q�69   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ partDataGrid��5         RowDetailsVisibilityMode$ VisibleWhenSelected=�6)      EnableRowVirtualization .    AutoGenerateColumns .  $��
0,0,10,234q�6�   ��6X   ��    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      -   5        currentValueColumn��,  &System.Windows.Controls.DataGridColumn	   Width5  /System.Windows.Controls.DataGridLengthConverter$	 SizeToHeader 5   A   
   Header$
 Current Value��6V   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6m   �� *CurrentValue+  5      -   5        
nameColumn��$	 SizeToHeader 5   9   $
 Name           ��6N    6g   �� *Name+  5      -   5        partIdColumn��$	 SizeToHeader 5   ;   $
 Part Id��6P    6a   �� *PartId+  5      -   5        priceColumn��$	 SizeToHeader 5   :   $
 Price��6O    6^   �� *Price+  5      -   5        quantityColumn��$	 SizeToHeader 5   =   $
 Quantity��6R    6d   �� *
Quantity+4  .System.Windows.Controls.DataGridTemplateColumn  5      -   5        terminationDateColumn��$	 SizeToHeader 5   H   $
 Termination Date��6]      CellTemplate 5      �� 5      .R�5      (  "System.Windows.Controls.DatePicker     SelectedDate 6)   �� *TerminationDate+ �� Mode$ TwoWay=� �� NotifyOnValidationError .  �� ValidatesOnExceptions . 5      5      5      �� 5   
   -	   5        $��New Part��5      $
��Left=�6$   $��
10,375,0,0q�6?   $	��Top=�6S   $	��101��6k   $��23��6�   � 5   
   -
   5         �Name$ 
DetailGrid��5      $
��Left=�6#   $��233,370,0,0q�6>   $	��Top=�6S    � ColumnDefinitions 5      �� 5       $
��Auto �6#   �� 5!      $
��Auto �6#    � RowDefinitions 5#      �� 5$      $
��Auto �6    �� 5%      $
��Auto �6    �� 5&      $
��Auto �6    �� 5'      $
��Auto �6    �� 5(      $
��Auto �6    �� 5)      $
��Auto �6    .+�5+      �� $��Current Value:��6   $��0��6-   $
��Left=�6=   $��3q�6X   $��0��6c   $��Center=�6p   �� 5,      -   5         ��Name$ currentValueTextBox��5,      $��1��63   $
��Left=�6C   $��23��6^   $��3q�6j   $��0��6u   $��Center=�6�   $	��120��6  ��6�   �� *CurrentValue+$ TwoWay=� .  . 6  �� 5-      $��Name:��6   $��0��6$   $
��Left=�64   $��3q�6O   $��1��6Z   $��Center=�6g   �� 5.      -   5        $ nameTextBox��5.      $��1��6+   $
��Left=�6;   $��23��6V   $��3q�6b   $��1��6m   $��Center=�6�   $	��120��6�   ��6z   �� *Name+$ TwoWay=� .  . 6�   �� 5/      $��Part Id:��6   $��0��6'   $
��Left=�67   $��3q�6R   $��2��6]   $��Center=�6j   �� 50      -   5        $ partIdTextBox��50      $��1��6-   $
��Left=�6=   $��23��6X   $��3q�6d   $��2��6o   $��Center=�6�   $	��120��6�   ��6|   �� *PartId+$ TwoWay=� .  . 6�   �� 51      $��Price:��6   $��0��6%   $
��Left=�65   $��3q�6P   $��3��6[   $��Center=�6h   �� 52      -   5        $ priceTextBox��52      $��1��6,   $
��Left=�6<   $��23��6W   $��3q�6c   $��3��6n   $��Center=�6�   $	��120��6�   ��6{   �� *Price+$ TwoWay=� .  . 6�   �� 53      $��	Quantity:��6   $��0��6(   $
��Left=�68   $��3q�6S   $��4��6^   $��Center=�6k   �� 54      -   5        $ quantityTextBox��54      $��1��6/   $
��Left=�6?   $��23��6Z   $��3q�6f   $��4��6q   $��Center=�6�   $	��120��6�   ��6~   �� *
Quantity+$ TwoWay=� .  . 6�   �� 55      $��Termination Date:��6   $��0��60   $
��Left=�6@   $��3q�6[   $��5��6f   $��Center=�6s     56      -   5          Name$ terminationDateDatePicker��56      $��1��6<   $
��Left=�6L   $��3q�6g   $��5��6r   $��Center=�6�    6   �� *TerminationDate+$ TwoWay=� .  . 6�   57      59      5:      