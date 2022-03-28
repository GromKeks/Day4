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
    /// Логика взаимодействия для PagePlayers.xaml
    /// </summary>
    public partial class PagePlayers : Page
    {
        Entities.PlayerInTeam playerInTeamD;
        Entities.Team team;

        public PagePlayers()
        {
            InitializeComponent();
            dgPlayer.ItemsSource = App.Context.Player.ToList();
            dgPlayer.ItemsSource = App.Context.Team.ToList();


        }

        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new PageAddPlayer());
            
        }

        private void btnEdit_Click(object sender, RoutedEventArgs e)
        {
			if (playerInTeamD == null)
			{
                MessageBox.Show("Выбирите игрока для изменения!", "Сообщение", MessageBoxButton.OK, MessageBoxImage.Warning);
			}
			else
			{
                NavigationService.Navigate(new PageAddPlayer(playerInTeamD));
            }   
        }

        private void btnDelete_Click(object sender, RoutedEventArgs e)
        {
            
        }

        private void tbSearchPlayer_TextChanged(object sender, TextChangedEventArgs e)
        {
              
        }

        private void cbTeam_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
           
              
        }

		private void dgPlayer_SelectionChanged(object sender, SelectionChangedEventArgs e)
		{
            
		}

		private void Page_Loaded(object sender, RoutedEventArgs e)
		{
            
		}

		private void btnDrop_Click(object sender, RoutedEventArgs e)
		{
            
		}
	}
}
