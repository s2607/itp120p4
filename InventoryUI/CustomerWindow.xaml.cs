using System;
using System.Collections.Generic;
using System.Linq;
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
    /// Interaction logic for CustomerWindow.xaml
    /// </summary>
    /// 
    public partial class CustomerWindow : Window
    {
        private CreateCustomer newcustomerwindow;
        private Entities1 context = new Entities1();
        public delegate void logevent(string error);
        public event logevent OnLogableEvent;
        public CustomerWindow()
        {
            InitializeComponent();

        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            System.Windows.Data.CollectionViewSource customerViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("customerViewSource")));
            // Load data by setting the CollectionViewSource.Source property:
            try
            {
                customerViewSource.Source = context.Customers.ToList();
            }
            catch (Exception er)
            {
                cwlogevent("error getting customers"+er);
            }
        }

        private void customerDataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            try
            {
                try
                {
                    context.SaveChanges();
                    OnLogableEvent("Saved Changes to customer!\n");
                }
                catch (Exception er)
                {
                    OnLogableEvent("Error saving updates!!! Please exit: your data may be invalid\n "+er);
                    throw;
                }
 
            }
            catch (Exception)
            {
                OnLogableEvent("oops" + this.Name);
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            newcustomerwindow = new CreateCustomer();
            newcustomerwindow.OnLogableEvent += childlogevent;
            newcustomerwindow.Show();
            cwlogevent("started creating new customer");
        }
        private void cwlogevent(string error)
        {
            OnLogableEvent(error);

        }
        private void childlogevent(string error)
        {
            cwlogevent(error);
            customerDataGrid.ItemsSource = null;
            customerDataGrid.ItemsSource = context.Customers.ToList(); //ugly hack to update datagrid
            //TODO: put customer list in a collection type that implements the observable interface
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {//TODO fix button handler names
            //TODO get delete to work
            //context.Customers.Remove(context.Customers.Where(c => c.CustomerId==int.Parse(((DataGridRow)customerDataGrid.SelectedItem) .FindName("Customer ID").ToString()));
            
        }
    }
}
