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
    /// Interaction logic for CreateCustomer.xaml
    /// </summary>
    public partial class CreateCustomer : Window
    {
        private Customer customer = new Customer();
        private Entities1 context = new Entities1();
        public delegate void logevent(string error);
        public event logevent OnLogableEvent;
        public CreateCustomer()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            System.Windows.Data.CollectionViewSource customerViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("customerViewSource")));
            // Load data by setting the CollectionViewSource.Source property:
             //customerViewSource.Source = customer;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {//save button
            //TODO: use catch to catch specific exceptions
            try//let us bail on an error without the whole app crashing
            {
                try //catch user entry error
                {
                    ErrorLabel.Visibility = Visibility.Visible;
                   customer.City= cityTextBox.Text;
                    customer.FirstName=firstNameTextBox.Text;
                    customer.LastName=lastNameTextBox.Text;
                    customer.State=stateTextBox.Text;
                }
                catch (Exception er)
                {
                    ErrorLabel.Content = "Please check entered data\n" + er;
                    throw;
                }
                try//catch databse error
                {
                    context.Customers.Add(customer);
                    updatestatus( "saving...\n");
                    context.SaveChanges();
                }
                catch (Exception er)
                {
                   updatestatus("Ooops" + er);
                }
                updatestatus("succsesfully created "+customer.FirstName+ "!\n");
                ErrorLabel.Visibility = Visibility.Hidden;
                ErrorLabel.Content = "---";
                Close();
            }
            catch (Exception)//if we bailed earlier make sure label is visible
            {
                ErrorLabel.Visibility = Visibility.Visible;
            }
            
        }
        private void updatestatus(string status)
        {
            ErrorLabel.Content = status;
            OnLogableEvent(status);
        }
    }
}
