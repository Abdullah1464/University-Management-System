using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AssignCourses : System.Web.UI.Page
{
    string stdID = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void check_Click(object sender, EventArgs e)
    {

        using (SqlConnection sqlCon = new SqlConnection("Data Source=ABDULLAHS-NOTEB" + "\\SQLEXPRESS;Initial Catalog=projectDatabase2;Integrated Security=True"))
        {
            sqlCon.Open();
            bool hasPreReq = false;
            string preReq = "";
            bool passed = false;
            /*FIRST CATERING IF STUDENT CAN STUDY THE COURSE*/
            string query = "SELECT * FROM HAS_PRE_REQ WHERE CourseCode = @a2";
            SqlCommand cm = new SqlCommand(query, sqlCon);
            cm.Parameters.AddWithValue("@a1", StudentID.Text);
            stdID = StudentID.Text;
            cm.Parameters.AddWithValue("@a2", CourseCode.Text);

            SqlDataReader reader = cm.ExecuteReader();
            if (reader.HasRows)
            {
                hasPreReq = true;
                while (reader.Read())
                {
                    preReq = reader["CourseCode"].ToString();
                }
            }
            reader.Close();

            if (hasPreReq)
            {
                // CHECKING IF STUDENT HAS PASSED THE COURSE

                string query1 = "SELECT * FROM HAS_PASSED WHERE StudentID = @a1 AND CourseCode = @a2";
                SqlCommand cmd = new SqlCommand(query1, sqlCon);
                cmd.Parameters.AddWithValue("@a1", StudentID.Text);
                cmd.Parameters.AddWithValue("@a2", CourseCode.Text);

                SqlDataReader reader2 = cmd.ExecuteReader();
                if (reader2.HasRows)
                {
                    passed = true;
                }
                reader2.Close();
            }
            else
            {
                // IT DOES NOT HAVE A PRE-REQ, CHECK SPACE IN SECTIONS
                string query2 = "SELECT SecName, Capacity FROM CourseSection WHERE CourseCode = @a2";
                SqlCommand cmd = new SqlCommand(query2, sqlCon);
                cmd.Parameters.AddWithValue("@a1", StudentID.Text);
                cmd.Parameters.AddWithValue("@a2", CourseCode.Text);

                string temp = "";
                SqlDataReader reader3 = cmd.ExecuteReader();
                if (reader3.HasRows)
                {
                    while (reader3.Read())
                    {
                        temp += reader3["SecName"].ToString();
                        temp += reader3["Capacity"];
                        temp += "<br/>";
                    }
                }
                reader3.Close();

                Label Label1 = (Label)FindControl("Label1");
                Label1.Text = temp;
            }

            // IT HAS A PRE-REQ, STUDENT HAS PASSED, AND NOW SEEING IF THERE'S SPACE IN ANY SECTION
            string query3 = "SELECT SecName, Capacity FROM CourseSection WHERE CourseCode = @a2";
            SqlCommand cm1 = new SqlCommand(query3, sqlCon);
            cm1.Parameters.AddWithValue("@a1", StudentID.Text);
            cm1.Parameters.AddWithValue("@a2", CourseCode.Text);
            int strength = 0;
            string temp2 = "";
            temp2 += "<table class =\"table table-bordered table-hover info\" style = \"margin-left:300px;\">";
            temp2 += "<thead><tr><th> SECTION </th><th> STRENGTH </th></tr></thead>";
            temp2 += "<tbody>";
            SqlDataReader reader4 = cm1.ExecuteReader();
            if (reader4.HasRows)
            {
                while (reader4.Read())
                {
                    temp2 += ("<tr><td>" + reader4["SecName"].ToString() + "</td>");
                    temp2 += ("<td>" + reader4["Capacity"] + "</td></tr>");
                    //strength = reader4.GetInt32(2);
                }
            }
            reader4.Close();
            temp2 += "</tbody>";
            Label1.Text = temp2;

            // IF YES, UPDATE IN MAKE_COURSE_SECTION
            if (passed && strength < 50)
            {

            }

            sqlCon.Close();
        }
    }
    protected void Register_Click(object sender, EventArgs e)
    {
        using (SqlConnection sqlCon = new SqlConnection("Data Source=DESKTOP-6IP78NC" + "\\SQLEXPRESS;Initial Catalog=projectDatabase;Integrated Security=True"))
        {
            sqlCon.Open();

            string query = "INSERT INTO MAKE_COURSE_SECTION (CourseSecID, StudentID)" +
                           "SELECT cs.SecID,@a0" +
                           "FROM CourseSection cs " +
                           "WHERE cs.SecName = @a1";

            SqlCommand cm = new SqlCommand(query, sqlCon);
            cm.Parameters.AddWithValue("@a0", stdID);
            cm.Parameters.AddWithValue("@a1", TextBox1.Text);

            int n = cm.ExecuteNonQuery();
            if (n > 0)
            {
                Label Label2 = (Label)FindControl("Label2");
                Label2.Text = "Student has been successfully registered!";
            }

            sqlCon.Close();
        }
    }
}

   





