   M S B A M L   `   `   `  ����S  OEntityFrameworkInventory, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nulleHclr-namespace:EntityFrameworkInventory;assembly=EntityFrameworkInventoryEntityFrameworkInventory  5   �    InventoryUI    InventoryUI.CreateCustomer   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     6F   mEntityFrameworkInventoryHclr-namespace:EntityFrameworkInventory;assembly=EntityFrameworkInventory     6�   -   5          � Title$  CreateCustomer��5   	   $	��300��6    $	��300��6-    � 	Resources 5         customerViewSource��%   &	        �� 5   
   6   5      .��5	      � .+�5   
   � -   5         �Name$ grid1��5      $	��Top=�6   $��	14,19,0,0q�66   $
��Left=�6I    � DataContext# [  6d    � RowDefinitions 5      �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6     � ColumnDefinitions 5      �� 5      $
��Auto �6#   �� 5      $
��Auto �6#   .+�5      �� $��Center=�6   $��0��6/   $��3q�6<   $
��Left=�6G   $��0��6b   $��City:��6r   �� 5      -   5         ��Name$ cityTextBox��5      $	��120��6+   $��Center=�67   $��0��6�   $��3q�6�   $��23��6�   $
��Left=�6�   $��1��6�   ��6R   �� *City+ �� Mode$ TwoWay=� �� NotifyOnValidationError . 	 �� ValidatesOnExceptions	 . 6�   �� 5      $��Center=�6   $��2��6/   $��3q�6<   $
��Left=�6G   $��0��6b   $��First Name:��6r   �� 5      -   5        $ firstNameTextBox��5      $	��120��60   $��Center=�6<   $��2��6�   $��3q�6�   $��23��6�   $
��Left=�6�   $��1��6�   ��6W   �� *	FirstName+$ TwoWay=� . 	 . 6�   �� 5      $��Center=�6   $��3��6/   $��3q�6<   $
��Left=�6G   $��0��6b   $��
Last Name:��6r   �� 5      -   5        $ lastNameTextBox��5      $	��120��6/   $��Center=�6;   $��3��6�   $��3q�6�   $��23��6�   $
��Left=�6�   $��1��6�   ��6V   �� *
LastName+$ TwoWay=� . 	 . 6�   �� 5      $��Center=�6   $��4��6/   $��3q�6<   $
��Left=�6G   $��0��6b   $��State:��6r   �� 5      -   5        $ stateTextBox��5      $	��120��6,   $��Center=�68   $��4��6�   $��3q�6�   $��23��6�   $
��Left=�6�   $��1��6�   ��6S   �� *State+$ TwoWay=� . 	 . 6�   5       �� 5!   
   -   5        $
��Save��5!      $
��Left=�6    $��196,219,0,0q�6;   $	��Top=�6P   $��75��6h   6s   �� 5"   
   -   5        $��
ErrorLabel��5"      $y�Hidden=�6"   $��Label��66   $
��Left=�6F   $��
32,219,0,0q�6a   $	��Top=�6u   $	��159��6�   5$      5%      