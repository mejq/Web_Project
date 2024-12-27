using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROJECT
{
    public partial class App_deneme1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private string connectionString = "Data Source = MEJO; Initial Catalog = PROJECT; Persist Security Info=True;User ID = admin; Password=mejo1234;Encrypt=False;TrustServerCertificate=True";

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            // Kullanıcıdan alınan içerik ve başlık
            string diaryContent =HiddenField1.Value;
            string DiaryTitle = txtbx_title.Text;

            int currentUserID = Convert.ToInt32(Session["UserID"]);

            // İçerik ve başlık boşluk kontrolü
            if (string.IsNullOrWhiteSpace(diaryContent) || string.IsNullOrWhiteSpace(DiaryTitle))
            {
                Response.Write("<script>alert('Başlık ve içerik boş olamaz.');</script>");
                return;
            }

            // Veritabanına kaydetme işlemi
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Diary (Content, Title, UserID) VALUES (@Content, @Title, @UserID)";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Content", diaryContent);
                    command.Parameters.AddWithValue("@Title", DiaryTitle);
                    command.Parameters.AddWithValue("@UserID", currentUserID);

                    connection.Open();
                    command.ExecuteNonQuery();
                    connection.Close();
                }
            }

            // Başarı mesajı
            Response.Write("<script>alert('Günlük başarıyla kaydedildi!');</script>");

            // Formu temizle
            txtbx_title.Text = string.Empty;
        

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void HiddenField1_ValueChanged(object sender, EventArgs e)
        {

        }

        protected void btn_show_Click(object sender, EventArgs e)
        {
            string query = "SELECT Content, Title FROM Diary WHERE CAST(CreatedAt AS DATE) = @Date";
            string diaryContent = string.Empty;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                //command.Parameters.AddWithValue("@Date",Calendar_diary.SelectedDate);
                DateTime selectedDate = Calendar_diary.SelectedDate;
                command.Parameters.AddWithValue("@Date", selectedDate.ToString("yyyy-MM-dd"));

                connection.Open();
                SqlDataReader reader = command.ExecuteReader(); // DataReader ile verileri al

                while (reader.Read())
                {
                    // Her bir satırdaki veriyi al
                    string content = reader["Content"].ToString();
                    string title = reader["Title"].ToString();

                    // İçeriği birleştirerek göster
                    diaryContent += "<h3>" + title + "</h3>" + "<p>" + content + "</p>";
                }

                reader.Close();
            }

            // Literal kontrolüne atama
            literal_diary.Text = diaryContent;



        }

        protected void Calendar_diary_SelectionChanged(object sender, EventArgs e)
        {

        }
    }
}
    
