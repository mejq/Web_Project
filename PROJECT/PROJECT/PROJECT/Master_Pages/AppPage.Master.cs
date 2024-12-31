using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROJECT
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //DataTable loggedInUsers = (DataTable)Application["LoggedInUsers"];

            if (Session["UserID"] == null)
            {
                // Kullanıcı giriş yapmamışsa giriş sayfasına yönlendir
                Response.Redirect("Home.aspx");
            }
            Button1.Visible = false;
            if (Session["Role"].ToString()== "Admin")
            {
                //DataRow[] row = (string)loggedInUsers["Role"];
                Button1.Visible=true;
                
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            
                if (Session["UserID"] != null)
                {
                    //DataTable loggedInUsers = (DataTable)Application["LoggedInUsers"];
                    //string userId = Session["UserID"].ToString();

                    // DataTable'dan UserID'yi sil
                    //DataRow[] rows = loggedInUsers.Select($"UserID = '{userId}'");
                    //foreach (var row in rows)
                    //{
                    //    loggedInUsers.Rows.Remove(row);
                    //}

                    // Session temizle
                    Session.Clear();
                    Response.Redirect("Login.aspx");
                }
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}