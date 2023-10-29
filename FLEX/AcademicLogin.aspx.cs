using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class _Default : System.Web.UI.Page
{
    string id = "", usertype = "", username = "";
    string F = "", L = "", D = "";
    /*private object lblError;*/

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        using (SqlConnection sqlCon = new SqlConnection("Data Source=ABDULLAHS-NOTEB" + "\\SQLEXPRESS;Initial Catalog=projectDatabase2;Integrated Security=True"))
        {
            sqlCon.Open();
            string query = "SELECT * FROM AcademicOfficer WHERE OfficerID = @a1 AND Passcode = @a2";
            SqlCommand cm = new SqlCommand(query, sqlCon);
            cm.Parameters.AddWithValue("@a1", ID.Text);
            cm.Parameters.AddWithValue("@a2", admin_password.Text);
            SqlDataReader reader = cm.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    Console.WriteLine("Connection Established!");
                    Session["ID"] = reader["OfficerID"];
                    Session["FName"] = reader["Fname"];
                    Session["LName"] = reader["Lname"];
                    Session["Dept"] = reader["DepName"];
                    Response.Redirect("~/AcademicMainPage.aspx");
                }
            }
            else
            {
                // Display an error message here
                Label lblError = (Label)FindControl("lblError");
                lblError.Text = "Incorrect password. Please try again.";
            }

            sqlCon.Close();
        }
    }
}