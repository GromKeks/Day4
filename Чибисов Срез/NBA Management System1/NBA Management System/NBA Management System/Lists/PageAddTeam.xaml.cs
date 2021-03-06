using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.IO;
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
	/// Логика взаимодействия для PageAddTeam.xaml
	/// </summary>
	public partial class PageAddTeam : Page
	{
		private byte[] mainImage;
		Entities.Team _team;
		bool Change = true;
 		public PageAddTeam()
		{
			InitializeComponent();
			Change = false;
			List<Entities.Division> divisions = App.Context.Division.ToList();
			cbDivision.ItemsSource = divisions;
			cbConference.ItemsSource = App.Context.Conference.ToList();
			
		}

		public PageAddTeam(Entities.Team team)
		{
			InitializeComponent();
			Change = true;
			
			
			tbAbbr.Text = team.Abbr;
			
			cbConference.ItemsSource = App.Context.Conference.ToList();
			cbConference.SelectedItem = team.Division.Conference;
			cbDivision.ItemsSource = App.Context.Division.ToList();
			cbDivision.SelectedItem = team.Division;
			this.DataContext = team;
			_team = team;
		}

		private void btnOK_Click(object sender, RoutedEventArgs e)
		{
            try
            {
				if (!Change)
				{
					Entities.Team team = new Entities.Team();
					
					team.Abbr = tbAbbr.Text;
					
					
					App.Context.Team.Add(team);
					App.Context.SaveChanges();
					MessageBox.Show("Новая команда успешно добавлена!", "Сообщение", MessageBoxButton.OK, MessageBoxImage.Information);
				}
				else
				{
					Entities.Team team = App.Context.Team.FirstOrDefault(c => c.TeamId == _team.TeamId);
					
					team.DivisionId = (cbDivision.SelectedItem as Entities.Division).DivisionId;
					
					team.Abbr = tbAbbr.Text;
					
					if (mainImage != null)
					{
						
					}
					else
					{

					}
					App.Context.SaveChanges();
					MessageBox.Show("Данные обновлены", "Сообщение", MessageBoxButton.OK, MessageBoxImage.Information);
				}
				NavigationService.GoBack();
			}
            catch (Exception)
            {
				MessageBox.Show("Введены некорректные данные или остались незаполненные поля!", "Оповещение", MessageBoxButton.OK, MessageBoxImage.Warning);
			}
		}

		private void cbConference_SelectionChanged(object sender, SelectionChangedEventArgs e)
		{
			Entities.Conference conference = (Entities.Conference)cbConference.SelectedItem;
			cbDivision.ItemsSource = App.Context.Division.ToList().Where(c => c.Conference_id == conference.Conference_id);
		}

		private void AddPhoto_Click(object sender, RoutedEventArgs e)
		{
			OpenFileDialog ofd = new OpenFileDialog();
			ofd.Filter = "Image |*.png; *.jpg; *.jpeg";
			if (ofd.ShowDialog() == true)
			{
				mainImage = File.ReadAllBytes(ofd.FileName);
				ImageTeam.Source = (ImageSource)new ImageSourceConverter().ConvertFrom(mainImage);

			}
		}

		private void tbNameTeam_PreviewTextInput(object sender, TextCompositionEventArgs e)
		{
			//Ограничение на ввод только букв.
			e.Handled = (Char.IsDigit(e.Text, 0));
		}

		private void tbCoach_PreviewTextInput(object sender, TextCompositionEventArgs e)
		{
			e.Handled = (Char.IsDigit(e.Text, 0));
		}

		private void tbAbbr_PreviewTextInput(object sender, TextCompositionEventArgs e)
		{
			e.Handled = (Char.IsDigit(e.Text, 0));
		}

		private void tbStadion_PreviewTextInput(object sender, TextCompositionEventArgs e)
		{
			e.Handled = (Char.IsDigit(e.Text, 0));
		}
	}
}
