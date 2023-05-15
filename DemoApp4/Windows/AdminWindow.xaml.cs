using DemoApp4.Models;
using DemoApp4.Windows;
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

namespace DemoApp4
{
    /// <summary>
    /// Логика взаимодействия для AdminWindow.xaml
    /// </summary>
    public partial class AdminWindow : Window
    {
        private bool _isAdmin;
        MainWindow main = new();
        List<Service> services = new List<Service>();
        Demo4DbContext db = new Demo4DbContext();
        public static Service _currentService;
        public AdminWindow(bool IsAdmin = false)
        {
            InitializeComponent();
            _isAdmin = IsAdmin;
            services = db.Services.ToList();
            ServicesList.ItemsSource = services;
            foreach (var ser in services)
            {
                if (ser.Photo == null)
                    ser.Photo = $"/Resources/school_logo.png";
                ser.Photo = ser.Photo.Replace($"/Resources/", "");
                ser.Photo = $"/Resources/{ser.Photo}";
                if (ser.Discount != 0)
                {
                    ser.CostWithDiscount = ser.Cost - (ser.Cost * (ser.Discount / 100.00));
                }
                else
                {
                    ser.CostWithDiscount = ser.Cost;
                }
                db.Entry(ser).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
                db.SaveChanges();
            }
            discountFilter.ItemsSource = new List<string>()
            {
                "0-20%","20-40%","40-100%", "Все диапазоны"
            };
            costSortComboBox.ItemsSource = new List<string>
            {
                "По возрастанию", "По убыванию"
            };
            if (MainWindow.admin == false)
            {
                DeleteButton.Visibility = Visibility.Hidden;
                AddButton.Visibility = Visibility.Hidden;
                EditButton.Visibility = Visibility.Hidden;
                OrderButton.Visibility = Visibility.Hidden;
            }
            else
            {
                DeleteButton.Visibility = Visibility.Visible;
                AddButton.Visibility = Visibility.Visible;
                EditButton.Visibility = Visibility.Visible;

            }
            updateRecordAmount();
        }

        private void AddButton_Click(object sender, RoutedEventArgs e)
        {
            AddWindow addWindow = new AddWindow(new Service());
            addWindow.Show();
            Close();
        }

        private void ServicesList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            _currentService = ServicesList.SelectedItem as Service;
        }

        private void searchTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            services = services.Where(p => p.Name.ToLower().Contains(searchTextBox.Text.ToLower())).ToList();
            ServicesList.ItemsSource = services;
            updateRecordAmount();
        }
        private void updateRecordAmount()
        {
            recordAmountLabel.Content = $"{ServicesList.Items.Count} из {services.Count}";
        }

        private void EditButton_Click(object sender, RoutedEventArgs e)
        {
            EditWindow editWindow = new EditWindow(_currentService);
            editWindow.Show();
            Close();
        }

        private void discountFilter_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            services = db.Services.ToList();
            switch (discountFilter.SelectedIndex)
            {
                case 0:
                    {
                        services = db.Services.Where(p => p.Discount < 20).ToList();
                        ServicesList.ItemsSource = services;
                        updateRecordAmount();
                        break;
                    }
                case 1:
                    {
                        services = db.Services.Where(p => p.Discount > 20 && p.Discount < 40).ToList();
                        ServicesList.ItemsSource = services;

                        updateRecordAmount();
                        break;
                    }
                case 2:
                    {
                        services = db.Services.Where(p => p.Discount >= 40).ToList();
                        ServicesList.ItemsSource = services;
                        updateRecordAmount();
                        break;
                    }
                case 3:
                    {
                        services = db.Services.ToList();
                        ServicesList.ItemsSource = services;
                        updateRecordAmount();
                        break;
                    }
            }
        }

        private void costSortComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            services = db.Services.ToList();
            switch (costSortComboBox.SelectedIndex)
            {
                case 0:
                    {
                        ServicesList.ItemsSource = services.OrderBy(p => p.Cost);
                        updateRecordAmount();
                        break;
                    }
                case 1:
                    {
                        ServicesList.ItemsSource = services.OrderByDescending(p => p.Cost);
                        updateRecordAmount();
                        break;
                    }
            }
        }

        private void DeleteButton_Click(object sender, RoutedEventArgs e)
        {
            var elements = ServicesList.SelectedItems.Cast<Service>().ToList();

            if (MessageBox.Show($"Вы точно хотите удалить следующие {elements.Count} элементов?", "Внимание!",
                MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    db.Services.RemoveRange(elements);
                    db.SaveChanges();
                    MessageBox.Show("Данные удалены!", "Окно оповещений");
                    ServicesList.ItemsSource = db.Services.ToList();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }
        }

        private void OrderButton_Click(object sender, RoutedEventArgs e)
        {
            ClientServiceWindow clientServiceWindow = new();
            clientServiceWindow.Show();
            Close();
        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            MainWindow main = new();
            main.Show();
            Close();
        }
    }
}
