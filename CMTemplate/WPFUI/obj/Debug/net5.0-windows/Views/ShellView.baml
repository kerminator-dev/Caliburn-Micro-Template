   M S B A M L   `   `   `  ????@  <WPFUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:WPFUI.ViewsWPFUI.Views  5   	   3clr-namespace:WPFUI.ViewModelsWPFUI.ViewModels  61       WPFUI.Views.ShellView   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:WPFUI.Views     5   	   5
viewmodelsclr-namespace:WPFUI.ViewModels     61   ^ ZCaliburn.Micro.Platform, Version=4.0.0.0, Culture=neutral, PublicKeyToken=8e5891231f2ed21f"calhttp://caliburnmicro.com  6c   $??18(?5   	      WindowStyle#???   5	   	     ? Title$  	ShellView??5
   	   $	??265??6   $	??247??6(    ? WindowStartupLocation$ CenterScreen=?64   .??5      ?  ? ColumnDefinitions 5   
   ?? 5      $??20 ?6   ?? 5      $
??auto ?6   ?? 5      $
??auto ?6   ?? 5      $
??auto ?6   ?? 5      $
??auto ?6   ?? 5      $??* ?6   ?? 5      $??20 ?6    ? RowDefinitions 5   
   ?? 5      $??20 ?6   ?? 5      $
??auto ?6   ?? 5      $
??auto ?6   ?? 5      $
??auto ?6   ?? 5      $
??auto ?6   ?? 5      $
??auto ?6   ?? 5      $??* ?6   ?? 5      $??20 ?6   .+?5!   
   ?? -   5        $??Themes??5!      $??0??5"      $??1??5#       ?? SelectedItem$ SelectedTheme??5$      ?? 5&   
   -   5         ??Name$ FullName??5&      $??1??5'      $??1??5(      $??2??5)      ?? 5,   
   -   5         ??Name$ 	FirstName??5,      $??2??5-      $??1??5.      $	??150??5/      ?? 50   
   -   5        $ LastName??50      $??2??51      $??2??52      $	??150??53      ?? 54   
   -   5         ??Name$ 	ClearText??54      $??3??55      $??1??56      $??
Clear text??57        Caliburn.Micro.Message   Attach$ 	ClearText??58      $??0,0,0,20q?59      ?? 5;   
   -   5        $??People??5;      $??4??5<      $??1??5=       5>      ?? *SelectedPerson+	 ?? Mode$	 TwoWay=???5@      ?? 5A      .R?5B      ?? 
 ?? Orientation$
 
Horizontal=?6!   .+?5C      ?? $??0,0,10,0q?6?   ??6$   ?? *	FirstName+6?   ?? 5D      ??6$   ?? *
LastName+5E      5F      5H      ?? 5I   
   -   5        $ SelectedPerson_FirstName??5I      $??4??5J      $??2??5K      ?? 5M   
   -   5        $ LoadPageOne??5M      $??Page 1??5N      $??5??5O      $??1??5P      ?? 5R   
   -	   5        $ LoadPageTwo??5R      $??Page 2??5S      $??5??5T      $??2??5U      ?? 5W   
   -
   5         ??Name$ 
ActiveItem??5Y      $??6??5W      $??1??5X      5Y      5[      5\      