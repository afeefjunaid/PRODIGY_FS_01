using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Authentication
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void btnSignup_Click(object sender, EventArgs e)
        {
            string user = username.Text.Trim();
            string mail = email.Text.Trim();
            string pass = password.Text.Trim();

            // Basic server-side validation
            if (string.IsNullOrEmpty(user) || user.Length < 5)
            {
                lblMessage.Text = "Username must be at least 5 characters long.";
                lblMessage.Visible = true;
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;

            }

            if (string.IsNullOrEmpty(mail) || !mail.Contains("@"))
            {
                lblMessage.Text = "Please enter a valid email address.";
                lblMessage.Visible = true;
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            if (string.IsNullOrEmpty(user) || user.Length < 6)
            {
                lblMessage.Text = "Password must be at least 6 characters long.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Visible = true;
                return;
            }

            using (SqlConnection conn = new SqlConnection("Data Source=localhost\\sqlExpress;Initial Catalog=UserDB;Integrated Security=True;Encrypt=False"))
            {
                string query = "INSERT INTO Users (Username, Password, Email) VALUES (@Username, @Password, @Email)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Username", user);
                cmd.Parameters.AddWithValue("@Password", pass);
                cmd.Parameters.AddWithValue("@Email", mail);

                conn.Open();
                try
                {
                    cmd.ExecuteNonQuery();
                    lblMessage.Text = "Signup successful!";
                    Response.Redirect("Welcome.aspx");
                }
                catch (SqlException ex)
                {
                    if (ex.Number == 2627) // Unique constraint error
                    {
                        lblMessage.Text = "Username or email already exists.";
                    }
                    else
                    {
                        lblMessage.Text = "An error occurred: " + ex.Message;
                    }
                }
            }
        }
    }
}