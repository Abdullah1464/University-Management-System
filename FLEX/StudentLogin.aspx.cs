using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        using (SqlConnection sqlCon = new SqlConnection("Data Source=ABDULLAHS-NOTEB" + "\\SQLEXPRESS;Initial Catalog=projectDatabase2;Integrated Security=True"))
        {
            sqlCon.Open();
            string query = "SELECT * FROM Student WHERE RegID = @a1 AND Passcode = @a2";
            SqlCommand cm = new SqlCommand(query, sqlCon);
            cm.Parameters.AddWithValue("@a1", ID.Text);
            cm.Parameters.AddWithValue("@a2", student_password.Text);
            SqlDataReader reader = cm.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    Console.WriteLine("Connection Established!");
                    Session["ID"] = reader["RegID"];
                    Session["Name"] = reader["FirstName"];
                    Response.Redirect("~/StudentMain.aspx");
                }
            }
            else
            {
                // Display an error message here
                Label lblError = (Label)FindControl("lblError");
                lblError.Text = "<br><br>Incorrect password. Please try again.";
            }

            sqlCon.Close();
        }
    }

}