using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Authentication
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                Response.Redirect("Welcome.aspx");
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string user = username.Text.Trim();
            string pass = password.Text.Trim();

            string connString = "Data Source=localhost\\sqlExpress;Initial Catalog=UserDB;Integrated Security=True;Encrypt=False";
            using (SqlConnection conn = new SqlConnection(connString))
            {
                conn.Open();
                string query = "SELECT * FROM Users WHERE Username = @username AND Password = @password";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@username", user);
                cmd.Parameters.AddWithValue("@password", pass);

                SqlDataReader reader = cmd.ExecuteReader();
                Console.WriteLine("Hello");
                if (reader.HasRows)
                {
                    Session["Username"] = user;
                    Response.Redirect("Welcome.aspx");
                    
                }
                else
                {
                    lblError.Visible = true;  // Show error message
                }
            }
        }
    }
}