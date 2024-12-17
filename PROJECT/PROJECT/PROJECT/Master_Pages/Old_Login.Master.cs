using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROJECT
{
    public partial class Old_Login : System.Web.UI.MasterPage
    {
        // SQL bağlantı dizesi
        private string _connectionString = "Data Source = MEJO; Initial Catalog = PROJECT; Persist Security Info=True;User ID = admin; Password=mejo1234;Encrypt=False;TrustServerCertificate=True";


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = txtbx_username.Text;
            string password = txtbx_password.Text;
            string email = txtbx_email.Text;
            string gender = ddlist_gender.SelectedValue;
            SignUp_User(username, password, email, gender);

        }
        private void SignUp_User(string username, string password, string email, string gender)
        {

            string add_usr_command = "INSERT INTO User_Info (Username, Passwd, Gender, Email) " +
                "VALUES (@Username, @Password, @Gender, @Email)";

            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                connection.Open();
                using (SqlCommand cmd = new SqlCommand(add_usr_command, connection))
                {
                    // add with value Bu metod, sorgudaki parametreler (@Username, @Password, vb.)
                    // ile kullanıcının gönderdiği değerleri eşler ve sorguyu çalıştırmak için hazırlar.
                    cmd.Parameters.AddWithValue("@Username", username);
                    cmd.Parameters.AddWithValue("@Password", password);  // Şifreyi hash'lemeyi unutmayın
                    cmd.Parameters.AddWithValue("@Gender", gender);
                    cmd.Parameters.AddWithValue("@Email", email);

                    // SQL komutunu çalıştırıyoruz
                    cmd.ExecuteNonQuery();

                }




            }
        }
    }
}