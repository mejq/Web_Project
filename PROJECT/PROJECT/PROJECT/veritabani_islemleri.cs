//using System;
//using System.Collections.Generic;
//using System.Data;
//using System.Linq;
//using System.Web;
//using System.Data;
//using System.Data.SqlClient;

//namespace PROJECT
//{
//    public class  veritabani_islemleri
//    {
//        private string connectionString = "Data Source = MEJO; Initial Catalog = PROJECT; Persist Security Info=True;User ID = admin; Password=mejo1234;Encrypt=False;TrustServerCertificate=True";


//        public
//        public static DataTable tablogetir(string sorgu, Dictionary<string, object>parameters)
//        {
//            SqlConnection connection = new SqlConnection(connectionString);
//            connection.Open();
//            SqlCommand cmd = new SqlCommand(sorgu,connection);
//            SqlDataAdapter adapter = new SqlDataAdapter();  
//            DataTable table = new DataTable();
//            adapter.Fill(table);
//            connection.Close();
//            return table;


//        }
//    }
//}

//using System.Data.SqlClient;

//using (SqlConnection connection = new SqlConnection(connectionString))
//{
//    string query = "INSERT INTO Diary (Content, Title, UserID) VALUES (@Content, @Title, @UserID)";
//    using (SqlCommand command = new SqlCommand(query, connection))
//    {
//        command.Parameters.AddWithValue("@Content", diaryContent);
//        command.Parameters.AddWithValue("@Title", DiaryTitle);
//        command.Parameters.AddWithValue("@UserID", currentUserID);

//        connection.Open();
//        command.ExecuteNonQuery();
//        connection.Close();
//    }
