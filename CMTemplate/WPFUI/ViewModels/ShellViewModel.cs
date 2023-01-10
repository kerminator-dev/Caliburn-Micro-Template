using Caliburn.Micro;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using WPFUI.Models;

namespace WPFUI.ViewModels
{
    public class ShellViewModel : Conductor<object>
    {
        private string _firstName = "";
        public string FirstName 
        {
            get => _firstName;
            set
            {
                _firstName = value;

                base.NotifyOfPropertyChange(() => FirstName);
                base.NotifyOfPropertyChange(() => FullName);
            }
        }

        private string _lastName = "";
        public string LastName
        {
            get => _lastName;
            set
            {
                _lastName = value;

                base.NotifyOfPropertyChange(() => LastName);
                base.NotifyOfPropertyChange(() => FullName);
            }
        }

        public List<string> Themes
        {
            get => new List<string>() { "light", "dark" };
        }

        private string _selectedTheme;
        public string SelectedTheme
        {
            get => _selectedTheme;
            set
            {
                _selectedTheme = value; 
                // определяем путь к файлу ресурсов
                var uri = new Uri("Themes/" + value + ".xaml", UriKind.Relative);
                // загружаем словарь ресурсов
                ResourceDictionary resourceDict = Application.LoadComponent(uri) as ResourceDictionary;
                // очищаем коллекцию ресурсов приложения
                Application.Current.Resources.Clear();
                // добавляем загруженный словарь ресурсов
                Application.Current.Resources.MergedDictionaries.Add(resourceDict);
            }
        }

        public string FullName => $"{FirstName} {LastName}";

        private BindableCollection<Person> _people;
        public BindableCollection<Person> People
        {
            get => _people;
            set => _people = value;
        }

        private Person? _selectedPerson;

        public Person? SelectedPerson
        {
            get => _selectedPerson;
            set
            {
                _selectedPerson = value;

                NotifyOfPropertyChange(() => SelectedPerson);
            }
        }

        public ShellViewModel()
        {
            People = new BindableCollection<Person>()
            {
                new Person() { FirstName = "John", LastName = "Delman" },
                new Person() { FirstName = "Lucy", LastName = "Jenn" }
            };
        }

        public void ClearText()
        {
            FirstName = "";
            LastName = "";
        }

        public bool CanClearText(string firstName, string lastName)
        {
            return !string.IsNullOrEmpty(firstName) || !string.IsNullOrEmpty(lastName);
        }

        public async void LoadPageOne()
        {
            await base.ActivateItemAsync(new FirstChildViewModel());
        }

        public async void LoadPageTwo()
        {
            await base.ActivateItemAsync(new SecondChildViewModel());
        }
    }
}
