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
using NBA_Management_System.Lists;

namespace NBA_Management_System.Lists
{
    /// <summary>
    /// Логика взаимодействия для PageRoles.xaml
    /// </summary>
    public partial class PageRoles : Page
    {
        public PageRoles()
        {
            InitializeComponent();
        }

        private void btnManager_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new PageAuthorization());
        }

        private void btnGuest_Click(object sender, RoutedEventArgs e)
        {
            App.currentUser = null;
            NavigationService.Navigate(new PageMenu());
        }
    }
}
