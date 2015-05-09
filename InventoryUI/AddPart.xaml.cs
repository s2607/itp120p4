using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Contexts;
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
    /// Interaction logic for Window1.xaml
    /// </summary>
 
    public partial class AddPart : Window
    {
        private Part part = new Part();
        private Entities1 context = new Entities1();
        public delegate void logevent(string error);
        public event logevent OnLogableEvent;
        public AddPart()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            System.Windows.Data.CollectionViewSource partViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("partViewSource")));
            // Load data by setting the CollectionViewSource.Source property:
            //partViewSource.Source = part;


        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {//save button
            //TODO: use catch to catch specific exceptions
            //I did this last year but don't remember the syntax
            try//let us bail on an error without the whole app crashing
            {
                try //catch user entry error
                {
                    ErrorLabel.Visibility = Visibility.Visible;
                    part.Name = ((TextBox) partGrid.FindName("nameTextBox")).Text;
                    part.CurrentValue = decimal.Parse(((TextBox) partGrid.FindName("currentValueTextBox")).Text);
                    part.Price = decimal.Parse(((TextBox) partGrid.FindName("priceTextBox")).Text);
                    part.TerminationDate = ((DatePicker) partGrid.FindName("terminationDateDatePicker")).SelectedDate;
                    var a = 1;
                }
                catch (Exception er)
                {
                    ErrorLabel.Content = "Please check entered data\n" + er;
                    throw;
                }
                try//catch databse error
                {
                    context.Parts.Add(part);
                    updatestatus( "saving...\n");
                    context.SaveChanges();
                }
                catch (Exception er)
                {
                   updatestatus("Ooops" + er);
                }
                updatestatus("succsesfully created "+part.Name+ "!\n");
                ErrorLabel.Visibility = Visibility.Hidden;
                ErrorLabel.Content = "---";
                Close();
            }
            catch (Exception)//if we bailed earlier make sure label is visible
            {
                ErrorLabel.Visibility = Visibility.Visible;
            }
        }

        private void Button_Click_Cancel(object sender, RoutedEventArgs e)
        {
          this.Close();
        }

        private void updatestatus(string status)
        {
            ErrorLabel.Content = status;
            OnLogableEvent(status);
        }
    }
}
