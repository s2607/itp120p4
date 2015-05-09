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
    /// Interaction logic for Allparts.xaml
    /// </summary>
    public delegate void logevent(string error);
    public partial class Allparts : Window
    {
        //TODO delete part (not in spec but still would be nice)
        private AddPart newpartwindow;
        private Entities1 context = new Entities1();
        public event logevent OnLogableEvent;
        public Allparts()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            System.Windows.Data.CollectionViewSource partViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("partViewSource")));
            // Load data by setting the CollectionViewSource.Source property:
            // partViewSource.Source = [generic data source]
            partViewSource.Source = context.Parts.ToList();
        }

        private void partDataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            try
            {
                context.SaveChanges();
                OnLogableEvent("\n Succsesfull part update!\n");
            }
            catch (Exception er)
            {
                logevent("o h n o!" + er + "\n");
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            //TODO Activate the old window if it still exists instead of creating a new one
            newpartwindow = new AddPart();
            newpartwindow.OnLogableEvent += childlogevent;
            newpartwindow.Show();
            OnLogableEvent("\nStarted Creating new part\n");
        }

        private void logevent(string error)
        {
            OnLogableEvent(error);
        }
        private void childlogevent (string error)
        {
            logevent(error);
            partDataGrid.ItemsSource = null;
            partDataGrid.ItemsSource = context.Parts.ToList();
        }
    }
}
