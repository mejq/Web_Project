using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace PROJECT
{
    public partial class App_Map : System.Web.UI.Page
    {
        // Marker JavaScript Kodlarını Saklayan Değişken
        public string MarkersJavaScript { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            // Örnek Günlük Verileri (Veritabanınızdan Çekebilirsiniz)
            var logs = new[]
            {
                new { Id = 1, Title = "Günlük 1", Latitude = 37.7749, Longitude = -122.4194 }, // San Francisco
                new { Id = 2, Title = "Günlük 2", Latitude = 34.0522, Longitude = -118.2437 }, // Los Angeles
                new { Id = 3, Title = "Günlük 3", Latitude = 40.7128, Longitude = -74.0060 }   // New York
            };

            // Markerlar için JavaScript Kodlarını Oluştur
            var markersBuilder = new StringBuilder();
            foreach (var log in logs)
            {
                // Başlık ve Linkler için Özel Karakter Kaçışları
                var escapedTitle = log.Title.Replace("'", "\\'"); // Tek tırnakları kaçır
                var detailsLink = $"App_Map.aspx";

                // Marker Eklemek için JavaScript Kodlarını Oluştur
                markersBuilder.AppendLine($@"
                    L.marker([{log.Latitude}, {log.Longitude}])
                        .addTo(map)
                        .bindPopup('<b>{escapedTitle}</b><br><a href=""{detailsLink}"">Detayları Gör</a>');
                ");
            }

            // Marker Kodlarını Tek Bir String Değişkenine Atayın
            MarkersJavaScript = markersBuilder.ToString();
        }
    }
}
