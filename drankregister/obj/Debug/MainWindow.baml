   M S B A M L   `   `   `  ����H  Ddrankregister, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:drankregisterdrankregister  5   	       drankregister.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:drankregister     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      � $	��794��6   .+�5
   
   �� $
��Left=�6   $	��400��60   $��
488,10,0,0q�6=   $	��Top=�6Q   $	��296��6i   .+�5      �� -   5         ��Name$ txtid��5      $��42��6%    �� TextWrapping$
 Wrap=�61   $��id��6E   �� 5      -   5        $ txtprijs��5      $��42��6(   $
 Wrap=�64   $��prijs��6H   �� 5      -   5        $ txtsoort��5      $��42��6(   $
 Wrap=�64   $��soort��6H   �� 5      -   5        $ txtnaam��5      $��42��6'   $
 Wrap=�63   $
��naam��6G   �� 5      -   5         ��Name$ verstuur��5      $��	toevoegen��6'   $��61��6R   5      &   System.Windows.Controls.DataGrid  5   
   -   5          Name$
 data��5      $
��Left=�6!   $	��400��6<   $��	10,10,0,0q�6I   $	��Top=�6\   $	��345��6t      AutoGenerateColumns .     Columns 5      4  .System.Windows.Controls.DataGridTemplateColumn  5      ,  &System.Windows.Controls.DataGridColumn   ClipboardContentBinding 6)   Z�    CellTemplate 5      �� 5      5      5      0  *System.Windows.Controls.DataGridTextColumn  5      	   Header$	 ID��6_   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 6%   �� *ID+   ClipboardContentBinding 6<   Z� 6_     5      $
	 NAAM��6a   
 6%   �� *NAAM+ 6>   Z� 6a     5      $	 SOORT��6b   
 6%   �� *SOORT+ 6?   Z� 6b     5      $	 PRIJS��6b   
 6%   �� *PRIJS+ 6?   Z� 6b     5       5      �� 5       .R�5"      �� $ 	verwijder��6%   -   5        $��verwijderen��5"   8   6N   5$      5&        5'       5(      �� 5*      .R�5,      �� $ wijzig��6%   -   5        $��Bewerken��5,   5   6H   5.      50      54      � 55   
   -	   5         �Name$
 grid��55      $
��Left=�6   $	��420��68   $	��Top=�6E   $	��794��6]   57      59      