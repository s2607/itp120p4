   M S B A M L   `   `   `  ����S  OEntityFrameworkInventory, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nulleHclr-namespace:EntityFrameworkInventory;assembly=EntityFrameworkInventoryEntityFrameworkInventory  5   �    InventoryUI    InventoryUI.CustomerWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     6F   mEntityFrameworkInventoryHclr-namespace:EntityFrameworkInventory;assembly=EntityFrameworkInventory     6�   -   5          � 
ResizeMode$  NoResize=�5   	    � Title$ CustomerWindow��5   	   $	��614��6    $	��446��6-    � 	Resources 5         customerViewSource ! customerSalesOrdersViewSource �� Source �� Source��%\   &	        &	      7   �� 5   
   6   �� 5	   
    6E   �� *SalesOrders+8   5
      .��5      �  � DataContext# [  6   $��0,0,0,45q�6=   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ customerDataGrid��5         RowDetailsVisibilityMode$ VisibleWhenSelected=�6-      EnableRowVirtualization . 	   AutoGenerateColumns	 .  $��	0,0,0,353q�6�   ��6\   �� 
   Columns
 5      0  *System.Windows.Controls.DataGridTextColumn  5      -   5        
cityColumn��,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$ SizeToHeader 5   9      Header$
 City��6N   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6\   �� *City+  5      -   5        customerIdColumn��$ SizeToHeader 5   ?   $ Customer Id��6T    6i   �� *
CustomerId+  5      -   5        firstNameColumn��$ SizeToHeader 5   >   $ 
First Name��6S    6g   �� *	FirstName+  5      -   5        lastNameColumn��$ SizeToHeader 5   =   $ 	Last Name��6R    6e   �� *
LastName+  5      -   5        stateColumn��$ SizeToHeader 5   :   $ State��6O    6^   �� *State+  5      -   5        totalSalesColumn��$ SizeToHeader 5   ?      
IsReadOnly . $ Total Sales��6f    6{   �� *
TotalSales+5      � 5   
   -	   5         �Name$ grid1��5      $
��Left=�6   $��221,376,0,-76q�69   $	��Top=�6P   $	��241��6h    � ColumnDefinitions 5      �� 5      $
��Auto �6#   �� 5      $
��Auto �6#    � RowDefinitions 5      �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5       $
��Auto �6    �� 5!      $
��Auto �6    �� 5"      $
��Auto �6    .+�5$      �� $��City:��6   $��0��6$   $
��Left=�64   $��3q�6O   $��0��6Z   $��Center=�6g   �� 5%      -
   5         ��Name$ cityTextBox��5%      $��1��6+   $
��Left=�6;   $��23��6V   $��3q�6b   $��0��6m   $��Center=�6�   $	��120��6�   ��6z   �� *City+ �� Mode$ TwoWay=� �� NotifyOnValidationError .  �� ValidatesOnExceptions . 6�   �� 5&      $��Customer Id:��6   $��0��6+   $
��Left=�6;   $��3q�6V   $��1��6a   $��Center=�6n   �� 5'      -   5        $ customerIdTextBox��5'      $��1��61   $
��Left=�6A   $��23��6\   $��3q�6h   $��1��6s   $��Center=�6�   $	��120��6�   ��6�   �� *
CustomerId+$ TwoWay=� .  . 6�   �� 5(      $��First Name:��6   $��0��6*   $
��Left=�6:   $��3q�6U   $��2��6`   $��Center=�6m   �� 5)      -   5        $ firstNameTextBox��5)      $��1��60   $
��Left=�6@   $��23��6[   $��3q�6g   $��2��6r   $��Center=�6�   $	��120��6�   ��6   �� *	FirstName+$ TwoWay=� .  . 6�   �� 5*      $��
Last Name:��6   $��0��6)   $
��Left=�69   $��3q�6T   $��3��6_   $��Center=�6l   �� 5+      -   5        $ lastNameTextBox��5+      $��1��6/   $
��Left=�6?   $��23��6Z   $��3q�6f   $��3��6q   $��Center=�6�   $	��120��6�   ��6~   �� *
LastName+$ TwoWay=� .  . 6�   �� 5,      $��State:��6   $��0��6%   $
��Left=�65   $��3q�6P   $��4��6[   $��Center=�6h   �� 5-      -   5        $ stateTextBox��5-      $��1��6,   $
��Left=�6<   $��23��6W   $��3q�6c   $��4��6n   $��Center=�6�   $	��120��6�   ��6{   �� *State+$ TwoWay=� .  . 6�   �� 5.      $��Total Sales:��6   $��0��6+   $
��Left=�6;   $��3q�6V   $��5��6a   $��Center=�6n   �� 5/      -   5        $ totalSalesTextBox��5/      $��1��61   $
��Left=�6A   $��23��6\   $��3q�6h   $��5��6s   $��Center=�6�   $	��120��6�   ��6�   �� *
TotalSales+$ OneWay=�6�   50        51   
   -   5        $ salesOrdersDataGrid��51         
IsReadOnly . 	 .   . $��0,219,20,170q�6�   $ VisibleWhenSelected=�6�   ��6}   �� # [ 
 52        53      -   5        customerIdColumn1��$ Customer Id��53   _   $ SizeToHeader 6t    6@   �� *
CustomerId+6t     54      -   5        orderCostColumn��$ 
Order Cost��54   \   $ SizeToHeader 6p    6>   �� *	OrderCost+6p   4  .System.Windows.Controls.DataGridTemplateColumn  55      -   5        orderDateColumn��$ 
Order Date��55   B   $ SizeToHeader 6V      CellTemplate 56      �� 57      .R�58      (  "System.Windows.Controls.DatePicker     SelectedDate 6)   �� *	OrderDate+$ TwoWay=� .  . 59      5;        5<      -   5        orderTotalColumn��$ Order Total��5<   ^   $ SizeToHeader 6s    6?   �� *
OrderTotal+6s     5=      -   5        salesOrderNumberColumn��$ Sales Order Number��5=   j   $ SizeToHeader 6�    6E   �� *SalesOrderNumber+6�   5?      �� 5@   
   $*��$Sales Orders for selected Customer
��6   $
��Left=�6G   $��
10,193,0,0q�6b   $	��Top=�6v   �� 5A   
   -   5        $��Delete Customer��5A      $
��Left=�6+   $��
26,406,0,0q�6F   $	��Top=�6Z   $��99��6r   6}   �� 5B   
   -   5        $��New Customer��5B      $
��Left=�6(   $��
26,433,0,0q�6C   $	��Top=�6W   $��99��6o   6z   5D      5E      