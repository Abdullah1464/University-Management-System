using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    //string id = "", usertype = "", username = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        using (SqlConnection sqlCon = new SqlConnection("Data Source=ABDULLAHS-NOTEB" + "\\SQLEXPRESS;Initial Catalog=projectDatabase2;Integrated Security=True"))
        {
            sqlCon.Open();
            string query = "SELECT * FROM Instructor WHERE InstructorID = @a1 AND Password = @a2";
            SqlCommand cm = new SqlCommand(query, sqlCon);
            cm.Parameters.AddWithValue("@a1", ID.Text);
            cm.Parameters.AddWithValue("@a2", faculty_password.Text);
            SqlDataReader reader = cm.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    Console.WriteLine("Connection Established!");
                    Session["ID"] = reader["InstructorID"];
                    Session["Name"] = reader["FirstName"];
                    Response.Redirect("~/FacultyMainPage.aspx");
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