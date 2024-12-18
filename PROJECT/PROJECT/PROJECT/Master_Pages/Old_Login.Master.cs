using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text.RegularExpressions;
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
            regex(username, password, email, gender);

        }
        private void SignUp_User(string username, string password, string email, string gender)
        {

            string add_usr_command = "INSERT INTO User_Info (Username, Passwd, Gender, Email) " +
                "VALUES (@Username, @Password, @Gender, @Email)";
            string usrname_control = "Select COUNT(*) from User_Info Where Username=@username;";
            string mail_control = "Select COUNT(* from User_Info Where Email=@email;";

            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                connection.Open();

                //Username ve mail mevcut mu kontrol
                using (SqlCommand command_cntrl = new SqlCommand(usrname_control, connection))
                {
                    if (command_cntrl.CommandText !=""  &&command_cntrl.CommandText!="")
                    {

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
        private void regex(string username,string password, string email,string gender)
        {
            string email_check = txtbx_email.Text;
            Regex regex = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
            Match match = regex.Match(email_check);
            if (match.Success)
            {
                SignUp_User(username, password, email, gender);
                Response.Redirect("App_Home.aspx");
            }

            else
                txtbx_email.Text = "İncorrect Email!";
                txtbx_email.BackColor = Color.Red;
                txtbx_email.Focus();


        }



    }
}