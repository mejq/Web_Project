using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;
//using System.Data;

//namespace PROJECT
//{
//    public partial class login : System.Web.UI.Page
//    {
//        protected void Page_Load(object sender, EventArgs e)
//        {

//        }

//        protected void TextBox1_TextChanged(object sender, EventArgs e)
//        {

//        }

//        protected void Button1_Click(object sender, EventArgs e)
//        {
           
//            string sorgu= "string query = \"SELECT username, passwd,UserID FROM User_Info WHERE username = @username AND passwd = @passwd\";\r\n"

//            veritabani_islemleri.tablogetir(sorgu);
//            DataTable table = new DataTable();

//            if (table.Rows.Count > 0)
//            {
//                Session.Add("giris yapan kullanıcı", table.Rows[0]["kullaniciID"]);
//                Response.Redirect("Home.aspx");
//            }
            
//        }
//    }
//}