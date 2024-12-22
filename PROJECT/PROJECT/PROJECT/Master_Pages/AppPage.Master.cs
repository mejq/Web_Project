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
            if (Session["UserID"] == null)
            {
                // Kullanıcı giriş yapmamışsa giriş sayfasına yönlendir
                Response.Redirect("Home.aspx");
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            
                if (Application["LoggedInUsers"] != null && Session["UserID"] != null)
                {
                    DataTable loggedInUsers = (DataTable)Application["LoggedInUsers"];
                    string userId = Session["UserID"].ToString();

                    // DataTable'dan UserID'yi sil
                    DataRow[] rows = loggedInUsers.Select($"UserID = '{userId}'");
                    foreach (var row in rows)
                    {
                        loggedInUsers.Rows.Remove(row);
                    }

                    // Session temizle
                    Session.Clear();
                    Response.Redirect("Login.aspx");
                }
            

        }
    }
}