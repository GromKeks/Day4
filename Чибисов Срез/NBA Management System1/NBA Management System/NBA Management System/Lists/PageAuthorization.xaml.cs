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

namespace NBA_Management_System.Lists
{
    /// <summary>
    /// Логика взаимодействия для PageAuthorization.xaml
    /// </summary>
    public partial class PageAuthorization : Page
    {
        public PageAuthorization()
        {
            InitializeComponent();
        }

		private void btnEnter_Click(object sender, RoutedEventArgs e)
		{
            try
            {


                Entities.User user = App.Context.User.Where(c => c.Email == tbLogin.Text && c.Password == pbPassword.Password).FirstOrDefault();
                if (user != null)
                {
                    App.currentUser = user;
                    Properties.Settings.Default.currentUser = 1;
                    NavigationService.Navigate(new PageMenu());
                    tbLogin.Text = null;
                }
                else
                {
                    MessageBox.Show("Ошибка!");
                }
            }
            catch
            {
                MessageBox.Show("Ошибка!");
            }
		}
	}
}
