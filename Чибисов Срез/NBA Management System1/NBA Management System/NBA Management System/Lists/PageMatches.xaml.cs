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
    /// Логика взаимодействия для PageMatches.xaml
    /// </summary>
    public partial class PageMatches : Page
    {
        Entities.Match matchED;
        public PageMatches()
        {
            InitializeComponent();
            LViewMatches.ItemsSource = App.Context.Match.ToList();
            if (App.currentUser != null)
            { 
                btnAdd.Visibility = Visibility.Visible;
                btnEdit.Visibility = Visibility.Visible;
            }
            else
            {
                btnAdd.Visibility = Visibility.Collapsed;
                btnEdit.Visibility = Visibility.Collapsed;
            }
        }

		private void dtStarMatch_SelectedDateChanged(object sender, SelectionChangedEventArgs e)
		{
            LViewMatches.ItemsSource = App.Context.Match.ToList().Where(c => c.StartTime == dtStarMatch.SelectedDate);

        }

		private void btnAdd_Click(object sender, RoutedEventArgs e)
		{
            NavigationService.Navigate(new PageAddMatch());
		}

		private void LViewMatches_SelectionChanged(object sender, SelectionChangedEventArgs e)
		{
            Entities.Match match = (Entities.Match)LViewMatches.SelectedItem;
            spImage.DataContext = match;

            matchED = LViewMatches.SelectedItem as Entities.Match;
		}

		private void btnEdit_Click(object sender, RoutedEventArgs e)
		{
            if (matchED != null)
            {
                NavigationService.Navigate(new PageAddMatch(matchED));
            }
            else
            {
                MessageBox.Show("Выбирите запись для изменения!", "Сообщение", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }

		private void Page_Loaded(object sender, RoutedEventArgs e)
		{
            LViewMatches.ItemsSource = App.Context.Match.ToList();
		}
	}
}
