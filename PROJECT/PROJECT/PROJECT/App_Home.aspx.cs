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
            // Kullanıcıdan alınan metin
            string diaryContent = Textarea1.Value;
            string DiaryTitle = txtbx_title.Text;
            int currentUserID = Convert.ToInt32(Session["UserID"]); //session ıd kabul etmıyor
            //DateTime CreatedAt = DateTime.Now;
            // Görseli Base64 formatına çevir
            string base64Image = string.Empty;
            if (FileUpload1.HasFile)
            {
                using (var ms = new MemoryStream())
                {
                    FileUpload1.PostedFile.InputStream.CopyTo(ms);
                    byte[] imageBytes = ms.ToArray();
                    base64Image = Convert.ToBase64String(imageBytes);
                }
            }

           
           

            // Veritabanına kaydetme işlemi
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Diary (Content,Title,UserID) VALUES (@Content,@Title,@UserID)";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Görsel Base64 formatında metinle birlikte ekleniyor
                    if (!string.IsNullOrEmpty(base64Image))
                    {
                        diaryContent += "<br/><img src='data:image/png;base64," + base64Image + "' alt='Diary Image' />";
                    }

                    command.Parameters.AddWithValue("@Content", diaryContent);
                    command.Parameters.AddWithValue("@Title",DiaryTitle);
                    command.Parameters.AddWithValue("@UserID", currentUserID);
                    //command.Parameters.AddWithValue("@CreatedAt", CreatedAt);



                    connection.Open();
                    command.ExecuteNonQuery();
                    connection.Close();
                }
            }

            // Kullanıcıya bir mesaj göster
            Response.Write("<script>alert('Günlük başarıyla kaydedildi!');</script>");
            

            // Formu temizle
            Textarea1.Value = string.Empty;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
    
