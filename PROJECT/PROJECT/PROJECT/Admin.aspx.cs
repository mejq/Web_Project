using System;
using System.Collections.Generic;
using System.Linq;
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
            

        }
    }
}