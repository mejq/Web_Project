using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROJECT
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {    
                if (Session["Role"] == null || Session["Role"].ToString() != "Admin")
                {
                    Response.Redirect("Login.aspx");
                }
                //GridView1.DeleteMethod = "Del_Usr";
        }
        private string connectionString = "Data Source = MEJO; Initial Catalog = PROJECT; Persist Security Info=True;" +
                                          "User ID = admin; Password=mejo1234;Encrypt=False;TrustServerCertificate=True";    
        
        string query = "DELETE FROM User_Info WHERE userID=@selected_index";


        //user silmne
        public void Del_Usr()
        {
            int selected_index =Convert.ToInt32(GridView1.SelectedRow.Cells[2].Text);
            using (SqlConnection connection=new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@selected_index", selected_index);

                    connection.Open();
                    command.ExecuteNonQuery();
                    GridView1.DataBind();
                }          
            }
        }

        

        //user ekleme
        public void Add_Usr()
        {
            string username=txtbx_Username.Text;
            string password=txtbx_Password.Text;
            string email=txtbx_email.Text;
            string role=ddl_role.Text;
            string gender=ddl_gender.Text; 
            string query_add = "INSERT INTO User_Info (username, passwd, email, gender, Role) " +
                        "VALUES (@username, @password, @email, @gender, @role);";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query_add, connection))
                {
                    command.Parameters.AddWithValue("@username", username);
                    command.Parameters.AddWithValue("@password", password);
                    command.Parameters.AddWithValue("@email", email);
                    command.Parameters.AddWithValue("@role", role);
                    command.Parameters.AddWithValue("@gender", gender);

                    connection.Open();
                    command.ExecuteNonQuery();
                    GridView1.DataBind();
                }
            }


        }


        //user bilgileri değiştirme
        public void Update_Usr()
        {
            string username = txtbx_Username_updt.Text;
            string password = txtbx_Password_updt.Text;
            string email = txtbx_email_updt.Text;
            string role = ddl_role_updt.Text;
            string gender = ddl_gender_updt.Text;
            int userId=Convert.ToInt32(ddl_id_updt.SelectedValue);
            string query_usrname = "UPDATE User_Info SET username = @username  WHERE userID = @userID and @username is not null;";
            string query_passwd = "UPDATE User_Info SET passwd = @password  WHERE userID = @userID and @password is not null;";
            string query_email = "UPDATE User_Info SET  email = @email  WHERE userID = @userID and @email is not null;";
            string query_role = "UPDATE User_Info SET Role = @role  WHERE userID = @userID and @role is not null;";
            string query_gender = "UPDATE User_Info SET gender = @gender  WHERE userID = @userID and @gender is not null;";
            //        string query_usrname = "UPDATE User_Info SET username = @username  WHERE userID = @userID and @username is not null;";

            if (txtbx_Username_updt.Text != "") 
            {
                        using (SqlConnection connection = new SqlConnection(connectionString))//updt username
            {
                using (SqlCommand command = new SqlCommand(query_usrname, connection))
                {
                    command.Parameters.AddWithValue("@username", username);
                    command.Parameters.AddWithValue("@userID", userId);

                    connection.Open();
                    command.ExecuteNonQuery();
                    GridView1.DataBind();
                }
            }
            }

            if (txtbx_Password_updt.Text != "")
            {  
                using (SqlConnection connection = new SqlConnection(connectionString))// updt passwd
            {
                using (SqlCommand command = new SqlCommand(query_passwd, connection))
                {
                    command.Parameters.AddWithValue("@password", password);
                    command.Parameters.AddWithValue("@userID", userId);

                    connection.Open();
                    command.ExecuteNonQuery();
                    GridView1.DataBind();
                }
            }
            }

            if(txtbx_email_updt.Text !="")
            {
            using (SqlConnection connection = new SqlConnection(connectionString))// updt email
            {
                using (SqlCommand command = new SqlCommand(query_email, connection))
                {
                    command.Parameters.AddWithValue("@email", email);
                    command.Parameters.AddWithValue("@userID", userId);


                    connection.Open();
                    command.ExecuteNonQuery();
                    GridView1.DataBind();
                }
            }
            }

            if (ddl_role_updt.SelectedIndex != 0)
            {             using (SqlConnection connection = new SqlConnection(connectionString))// updt role
            {
                using (SqlCommand command = new SqlCommand(query_role, connection))
                {
                    command.Parameters.AddWithValue("@role", role);
                    command.Parameters.AddWithValue("@userID", userId);

                    connection.Open();
                    command.ExecuteNonQuery();
                    GridView1.DataBind();
                }
            }
            }

            if(ddl_gender_updt.SelectedIndex != 0) 
            {  
                using (SqlConnection connection = new SqlConnection(connectionString))// updt gender
            {
                using (SqlCommand command = new SqlCommand(query_gender, connection))
                {
                    command.Parameters.AddWithValue("@gender", gender);
                    command.Parameters.AddWithValue("@userID", userId);


                    connection.Open();
                    command.ExecuteNonQuery();
                    GridView1.DataBind();
                }
            }

            }
            



        }




        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {}

        protected void btn_del_Click(object sender, EventArgs e)
        { Del_Usr(); }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {}

        protected void btn_del_Click1(object sender, EventArgs e)//btn_add
        {Add_Usr();}

        protected void Button2_Click(object sender, EventArgs e)//BTN UPDATE
        {Update_Usr();}

        protected void ddl_role_updt_SelectedIndexChanged(object sender, EventArgs e)
        {}
    }
}