using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROJECT
{
    public partial class Home : System.Web.UI.Page
    {
        private string connectionString = "Data Source = MEJO; Initial Catalog = PROJECT; Persist Security Info=True;User ID = admin; Password=mejo1234;Encrypt=False;TrustServerCertificate=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            string username = txtbx_Username.Text;
            string password = txtbPassword.Text;
           
            string query = "SELECT username, passwd,UserID FROM User_Info WHERE username = @username AND passwd = @passwd";
            string query_usrID = "SELECT UserID, Role FROM User_Info WHERE username = @username AND passwd = @passwd ";



            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                using (SqlCommand command = new SqlCommand(query, conn))
                {
                    command.Parameters.AddWithValue("@username", username);
                    command.Parameters.AddWithValue("@passwd", password);


                    command.ExecuteNonQuery();
                    // Kullanıcı doğrulama
                    var result = command.ExecuteScalar(); // Sorgunun ilk değerini döndürür
                    if (result != null)
                    {
                        using(SqlCommand command_ID = new SqlCommand(query_usrID,conn))
                {
                            command_ID.Parameters.AddWithValue("@username", username);
                            command_ID.Parameters.AddWithValue("@passwd", password);
                            int userID = -1;
                            using (SqlDataReader reader = command_ID.ExecuteReader())
                            {
                                if (reader.Read()) // Check if a row exists
                                {
                                    string role = reader["Role"].ToString(); // Fetch the 'Role' column by name
                                     userID = Convert.ToInt32(reader["userID"]);
                                    // Use these values as needed
                                    Session["Role"] = role;

                                }

                            }
                    if (userID !=-1)
                    {
                        // Kullanıcı doğrulandı
                        Session["UserID"] = userID.ToString(); // Sessiona userıd ekle

                        // DataTable girdisi
                        //if (Application["LoggedInUsers"] == null)
                        //{
                        //    // İlk giriş için DataTable oluşturdum
                        //    DataTable dt = new DataTable();
                        //    dt.Columns.Add("UserID", typeof(int));
                        //    dt.Columns.Add("LoginTime", typeof(DateTime));
                        //    dt.Columns.Add("Role", typeof(string));
                        //    Application["LoggedInUsers"] = dt;
                        //}
                        //        DataTable loggedInUsers = (DataTable)Application["LoggedInUsers"];
                        //        DataRow row = loggedInUsers.NewRow();
                                

                        //            // Kullanıcı bilgilerini DataTable'a ekle

                        //            row["UserID"] = userId;
                        //            row["LoginTime"] = DateTime.Now;
                        //            row["Role"] = role;
                        //            loggedInUsers.Rows.Add(row);

                                    // Başarılı giriş sonrası yönlendirme
                                    Response.Redirect("App_Home.aspx");
                                


                    }
                    else
                    {
                        lb_warning.Text = "Invalid username or password.";
                    }

                }
                   
                    }
                    else
                    {
                        // Kullanıcı bulunamadı
                        lb_warning.Text = "Invalid username or password.";
                    }
                    conn.Close();
                }


              
            }
              

            }
           

           





        }
    
}