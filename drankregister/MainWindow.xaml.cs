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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace drankregister
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

        DatabaseDataContext db = new DatabaseDataContext();

        public MainWindow()
        {
            InitializeComponent();
            data.ItemsSource = db.drankens.ToList();

        }

        private void DataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void verstuur_Click(object sender, RoutedEventArgs e)
        {
            dranken dedrank = new dranken();
            dedrank.ID = int.Parse(txtid.Text);
            dedrank.NAAM = txtnaam.Text;
            dedrank.SOORT = txtsoort.Text;
            dedrank.PRIJS = decimal.Parse(txtprijs.Text);

            db.drankens.InsertOnSubmit(dedrank);
            db.SubmitChanges();
            
            data.ItemsSource = db.drankens.ToList();
        }
        private void data_Click(object sender, RoutedEventArgs e)
        {
        }
        private void wijzig_Click(object sender, RoutedEventArgs e)
        {

            var selected = (dranken)data.SelectedItem;
            int iid = selected.ID;

            dranken drank = (from dranken in db.drankens where dranken.ID == iid select dranken).Single();

            drank.ID = int.Parse(txtid.Text);
            drank.NAAM = txtnaam.Text;
            drank.SOORT = txtsoort.Text;
            drank.PRIJS = decimal.Parse(txtprijs.Text);

            db.drankens.InsertOnSubmit(drank);
            db.drankens.DeleteOnSubmit(selected);

            db.SubmitChanges();

            data.ItemsSource = db.drankens.ToList();

        }
        private void data_SelectionChanged(object sender, RoutedEventArgs e)
        {
            
        }
        
        private void DgItems_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void verwijder_Click(object sender, RoutedEventArgs e)
        {
            var selected = (dranken)data.SelectedItem;

            
            db.drankens.DeleteOnSubmit(selected);
            db.SubmitChanges();

            data.ItemsSource = db.drankens.ToList();
        }

        private void dgItems_SelectionChanged_1(object sender, SelectionChangedEventArgs e)
        {

        }

    }
}
