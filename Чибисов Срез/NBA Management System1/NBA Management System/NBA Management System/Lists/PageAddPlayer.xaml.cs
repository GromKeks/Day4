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
	/// Логика взаимодействия для PageAddPlayer.xaml
	/// </summary>
	public partial class PageAddPlayer : Page
	{
		bool Change = true;
		private byte[] mainImage;

		Entities.PlayerInTeam _playerInTeam;

		public PageAddPlayer()
		{
			InitializeComponent();
			Change = false;
			
		
		}

		public PageAddPlayer(Entities.PlayerInTeam playerInTeam)
		{
		
		}

		private void btnSave_Click(object sender, RoutedEventArgs e)
		{
           
			
		}

		private void AddPhoto_Click(object sender, RoutedEventArgs e)
		{
			OpenFileDialog ofd = new OpenFileDialog();
			ofd.Filter = "Image |*.png; *.jpg; *.jpeg";
			if (ofd.ShowDialog() == true)
			{
				mainImage = File.ReadAllBytes(ofd.FileName);
				ImagePlayer.Source = (ImageSource)new ImageSourceConverter().ConvertFrom(mainImage);
			}
		}

		private void tbWeight_PreviewTextInput(object sender, TextCompositionEventArgs e)
		{
			//Ограничение на ввод только цифр.
			e.Handled = !(Char.IsDigit(e.Text, 0));
		}

		private void tbFIO_PreviewTextInput(object sender, TextCompositionEventArgs e)
		{
			//Ограничение на ввод только букв.
			e.Handled = (Char.IsDigit(e.Text, 0));
		}

		private void tbCollege_PreviewTextInput(object sender, TextCompositionEventArgs e)
		{
			e.Handled = (Char.IsDigit(e.Text, 0));
		}

        private void dpBirth_SelectedDateChanged(object sender, SelectionChangedEventArgs e)
        {
			
        }
    }
}
