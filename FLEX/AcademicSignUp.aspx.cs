using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AcademicSignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSignup_Click(object sender, EventArgs e)
    {
        using (SqlConnection sqlCon = new SqlConnection("Data Source=ABDULLAHS-NOTEB" + "\\SQLEXPRESS;Initial Catalog=projectDatabase2;Integrated Security=True"))
        {
            Random rand = new Random();
            int randomNumber = rand.Next(1, 10000); // Generate a random number between 1 and 9999
            string formattedNumber = randomNumber.ToString("D4"); // Format the number with leading zeroes
            string officerID = "A" + formattedNumber; // Combine the formatted number with the prefix "A"

            sqlCon.Open();

            string query = "INSERT INTO AcademicOfficer (OfficerID, Fname, Lname, Email, DepName, Passcode) VALUES (@a0, @a1, @a2, @a3, @a4, @a5)";
            SqlCommand cm = new SqlCommand(query, sqlCon);
            cm.Parameters.AddWithValue("@a0", officerID);

            cm.Parameters.AddWithValue("@a1", FName.Text);
            cm.Parameters.AddWithValue("@a2", LName.Text);
            cm.Parameters.AddWithValue("@a3", email.Text);
            cm.Parameters.AddWithValue("@a4", password.Text);
            cm.Parameters.AddWithValue("@a5", dept.Text);
            int n = cm.ExecuteNonQuery();
            if (n > 0)
            {
                lblMessage.Text = "Signup Successful";
                Response.Redirect("~/AcademicLogin.aspx");
            }
            else
            {
                lblMessage.Text = "Signup Failed";
            }

            sqlCon.Close();
        }
    }
}