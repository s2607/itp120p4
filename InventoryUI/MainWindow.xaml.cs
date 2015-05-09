using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Metadata.Edm;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using EntityFrameworkInventory;

namespace InventoryUI
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private Entities1 context= new Entities1();
        private Allparts partswindow;
        private CustomerWindow customerWindow;
        public MainWindow()
        {
        
            InitializeComponent();
            ErrorlogBlock.Text = "";
           Appenderror("\n=====\nTool started\n");
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

        }

        private void Partsbutton_Click (object sender, RoutedEventArgs e)
        {
                // TODO: recreate window on close
            partswindow = new Allparts();
            partswindow.OnLogableEvent += Appenderror;
            partswindow.Show();
        }

        private void Customerbutton_Click(object sender, RoutedEventArgs e)
        {
            customerWindow = new CustomerWindow();
            customerWindow.OnLogableEvent += Appenderror;
            customerWindow.Show();
        }

        public void Appenderror(string error)
        {
            ErrorlogBlock.Text += error;
            ErrScrollViewer.ScrollToBottom();
            
        }
    }
}
