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
	/// Логика взаимодействия для PageAddMatch.xaml
	/// </summary>
	public partial class PageAddMatch : Page
	{
		bool Change = true;
		Entities.Match _match;

		public PageAddMatch()
		{
			InitializeComponent();
			Change = false;
			cbHomeTeam.ItemsSource = App.Context.Team.ToList();
			cbAwayTeam.ItemsSource = App.Context.Team.ToList();
			cbSeason.ItemsSource = App.Context.Season.ToList();
			cbTypeMatch.ItemsSource = App.Context.MatchType.ToList();
			cbStatus.IsEnabled = false;
			cbStatus.ItemsSource = App.Context.Status.ToList().Where(c=>c.StatusId == 2);
		}

		public PageAddMatch(Entities.Match match)
		{
			InitializeComponent();
			Change = true;
			tbAwayScore.Visibility = Visibility.Visible;
			tbHomeScore.Visibility = Visibility.Visible;
			tbScoreA.Visibility = Visibility.Visible;
			tbScoreH.Visibility = Visibility.Visible;
			tbLocation.Text = match.Location;
			dpStart.SelectedDate = match.StartTime;
			cbHomeTeam.ItemsSource = App.Context.Team.ToList();
			cbHomeTeam.SelectedItem = match.Team;
			cbAwayTeam.ItemsSource = App.Context.Team.ToList();
			cbAwayTeam.SelectedItem = match.Team1;
			cbSeason.ItemsSource = App.Context.Season.ToList();
			cbSeason.SelectedItem = match.Season;
			cbTypeMatch.ItemsSource = App.Context.MatchType.ToList();
			cbTypeMatch.SelectedItem = match.MatchType;
			cbStatus.ItemsSource = App.Context.Status.ToList();
			cbStatus.SelectedItem = match.Status;
			tbAwayScore.Text = (match.Team_Away_Score).ToString();
			tbHomeScore.Text = (match.Team_Home_Score).ToString();
			this.DataContext = match;
			_match = match;
		}

		private void tbOK_Click(object sender, RoutedEventArgs e)
		{
			try
			{
				if (!Change)
				{
					Entities.Match match = new Entities.Match();
					int newMatchId = App.Context.Match.Max(c => c.MatchId) + 1;
					match.MatchId = newMatchId;
					match.Location = tbLocation.Text;
					match.StartTime = dpStart.SelectedDate.Value;
					match.Team_Home = (cbHomeTeam.SelectedItem as Entities.Team).TeamId;
					match.Team_Away = (cbAwayTeam.SelectedItem as Entities.Team).TeamId;
					match.Team_Home_Score = 0;
					match.Team_Away_Score = 0;
					match.SeasonId = (cbSeason.SelectedItem as Entities.Season).SeasonId;
					match.MatchTypeId = (cbTypeMatch.SelectedItem as Entities.MatchType).MatchTypeId;
					match.StatusId = (cbStatus.SelectedItem as Entities.Status).StatusId;
					App.Context.Match.Add(match);
					App.Context.SaveChanges();
					MessageBox.Show("Новый матч добавлен!", "Сообщение", MessageBoxButton.OK, MessageBoxImage.Information);
					NavigationService.GoBack();
				}
				else
				{
					Entities.Match match = App.Context.Match.Where(c => c.MatchId == _match.MatchId).FirstOrDefault();
					match.Location = tbLocation.Text;
					match.StartTime = dpStart.SelectedDate.Value;
					match.Team_Home = (cbHomeTeam.SelectedItem as Entities.Team).TeamId;
					match.Team_Away = (cbAwayTeam.SelectedItem as Entities.Team).TeamId;
					match.Team_Home_Score = int.Parse(tbHomeScore.Text);
					match.Team_Away_Score = int.Parse(tbAwayScore.Text);
					match.SeasonId = (cbSeason.SelectedItem as Entities.Season).SeasonId;
					match.MatchTypeId = (cbTypeMatch.SelectedItem as Entities.MatchType).MatchTypeId;
					match.StatusId = (cbStatus.SelectedItem as Entities.Status).StatusId;
					App.Context.SaveChanges();
					NavigationService.GoBack();
				}
			}
			catch (Exception)
			{
				MessageBox.Show("Введены некорректные данные или остались незаполненные поля!","Оповещение",MessageBoxButton.OK,MessageBoxImage.Warning);
			}
			
		}

        private void cbHomeTeam_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
			Entities.Team teamHome = (Entities.Team)cbHomeTeam.SelectedItem;
			cbAwayTeam.ItemsSource = App.Context.Team.ToList().Where(c => c.TeamId != teamHome.TeamId);
		}

        private void dpStart_SelectedDateChanged(object sender, SelectionChangedEventArgs e)
        {
            if (!Change)
            {
				DateTime thisDate = DateTime.Today;
				if (dpStart.SelectedDate < thisDate)
				{
					MessageBox.Show("Нельзя установить матч на данную дату!", "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
					dpStart.Text = null;
				}
			}	
        }

        private void tbLocation_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
			e.Handled = (Char.IsDigit(e.Text, 0));
		}

        private void tbAwayScore_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
			e.Handled = !(Char.IsDigit(e.Text, 0));
		}
    }
}
