using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.HtmlControls;

public partial class OfferCourses : System.Web.UI.Page
{
    string semID = "";
    string courseCode = "";
    bool hasOffered = false;
    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection sqlCon = new SqlConnection("Data Source=ABDULLAHS-NOTEB" + "\\SQLEXPRESS;Initial Catalog=projectDatabase2;Integrated Security=True"))
        {
            sqlCon.Open();
            string query1 = "SELECT SemesterName FROM Semester WHERE SemesterName LIKE '%2024%'";
            SqlCommand cm1 = new SqlCommand(query1, sqlCon);
            SqlDataReader reader = cm1.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    Label Label1 = (Label)FindControl("Label1");
                    Label1.Text = reader[0].ToString();
                    semID = reader[0].ToString();
                }
            }
            reader.Close();
           
            string query2 = "SELECT * FROM Course";
            SqlCommand cm2 = new SqlCommand(query2, sqlCon);
            SqlDataReader reader2 = cm2.ExecuteReader();
            SqlDataAdapter da = new SqlDataAdapter(cm2);
            Label Label2 = (Label)FindControl("Label2");
            string temp = "";
            string table = "";
            table += "<table class =\"table table - bordered table - hover info offset-md -\">";
            table += "<thead><tr><th> COURSE CODE</th><th> COURSE NAME </th><th> CREDIT HOURS </th><th>OFFER</th></tr></thead>";
            table += "<tbody>";
            if (reader2.HasRows)
            {
                while (reader2.Read())
                {

                    /*temp += reader2["CourseCode"].ToString() + "&nbsp;&nbsp;&nbsp;&nbsp;";
                    temp += reader2["CourseName"].ToString() + "&nbsp;&nbsp;&nbsp;&nbsp;";
                    temp += reader2["CreditHours"].ToString() + "&nbsp;&nbsp;&nbsp;&nbsp;";
                    temp += reader2["DepName"].ToString();
                    temp += "<br/>";*/
                    table += ("<tr><td>" + reader2["CourseCode"].ToString() + "</td>");
                    table += ("<td>" + reader2["CourseName"] + "</td>");
                    table += ("<td>" + reader2["CreditHours"] + "</td>");
                    table += ("<td>" + reader2["DepName"] + "</td></tr>");
                    table += "<br/>";
                }
            }
            reader2.Close();

            table += "</tbody>";
            Label2.Text = table;
           /* Panel1.Controls.Add(table);*/
        
        sqlCon.Close();
        }
    }

    protected void offer_btn_Click(object sender, EventArgs e)
    {
        using (SqlConnection sqlCon = new SqlConnection("Data Source=ABDULLAHS-NOTEB" + "\\SQLEXPRESS;Initial Catalog=projectDatabase2;Integrated Security=True"))
        {
            sqlCon.Open();
            //FIRST CHECKING IF TUPLE EXISTS
            string query = "SELECT CourseCode FROM OFFER_COURSE WHERE OFFER_COURSE.SemID = '202401' AND OFFER_COURSE.CourseCode = @a1";
            SqlCommand cm = new SqlCommand(query, sqlCon);
            cm.Parameters.AddWithValue("@a1", CourseCode.Text);

            SqlDataReader reader = cm.ExecuteReader();
            if (reader.HasRows)
            {
                hasOffered = true;
                
            }
            reader.Close();
            if (hasOffered)
            {
                Label Label3 = (Label)FindControl("Label3");
                Label3.Text = "Course has already been offered!";
            }
            else
            {
                string query1 = "INSERT INTO OFFER_COURSE (SemID, CourseCode) VALUES ('202401',@a1)";
                SqlCommand cm1 = new SqlCommand(query1, sqlCon);
                cm1.Parameters.AddWithValue("@a1", CourseCode.Text);

                int n = cm1.ExecuteNonQuery();
                if (n > 0)
                {
                    Label Label3 = (Label)FindControl("Label3");
                    Label3.Text = "Successful Insertion!";
                }
                else
                {
                    Label3.Text = "Unsuccessful Insertion!";
                }
            }
           

            sqlCon.Close();
        }
    }
}