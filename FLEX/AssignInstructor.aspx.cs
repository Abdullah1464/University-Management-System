using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class AssignInstructor : System.Web.UI.Page
{
    bool has3Courses = false;
    bool alreadyAssigned = false;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void check_Click(object sender, EventArgs e)
    {

        using (SqlConnection sqlCon = new SqlConnection("Data Source=ABDULLAHS-NOTEB" + "\\SQLEXPRESS;Initial Catalog=projectDatabase2;Integrated Security=True"))
        {
            sqlCon.Open();
          
            /*CHECKING IF A TEACHER HAS BEEN ALLOTED MORE THAN 3 COURSES*/
            string query = "select Count(*) as totalCourses from allocate_course where instructorID = @a2 group by instructorID having Count(*) >= 3";
            SqlCommand cm = new SqlCommand(query, sqlCon);
            cm.Parameters.AddWithValue("@a1", TextBox1.Text);
            cm.Parameters.AddWithValue("@a2", TextBox2.Text);

            SqlDataReader reader = cm.ExecuteReader();
            if (reader.HasRows)
            {
                has3Courses = true;
            }
            reader.Close();

            if (has3Courses)
            {
                //IF INSTRUCTOR HAS 3 COURSES DISPLAY MESSAGE
                Label Label1 = (Label)FindControl("Label1");
                Label1.Text = "The Instructor has already 3 courses. Cannot Assign more";

            }
            else
            {
                Label Label1 = (Label)FindControl("Label1");
                Label1.Text = "The Instructor has less than 3 courses. You can assign more!";
            }
            string query3 = "SELECT instructorID from allocate_course where instructorID = @a2 and ALLOCATE_COURSE.CourseCode = @a1";
            SqlCommand cm1 = new SqlCommand(query3, sqlCon);
            cm1.Parameters.AddWithValue("@a1", TextBox1.Text);
            cm1.Parameters.AddWithValue("@a2", TextBox2.Text);
            SqlDataReader reader4 = cm1.ExecuteReader();
            if (reader4.HasRows)
            {
                alreadyAssigned = true;
            }
            reader4.Close();
            if (alreadyAssigned)
            {
    
                Label Label1 = (Label)FindControl("Label1");
                Label1.Text = "The Instructor has already been assigned this course";

            }
            
            sqlCon.Close();
        }
    }
    protected void Register_Click(object sender, EventArgs e)
    {
        using (SqlConnection sqlCon = new SqlConnection("Data Source=DESKTOP-6IP78NC" + "\\SQLEXPRESS;Initial Catalog=projectDatabase;Integrated Security=True"))
        {
            sqlCon.Open();

            string query = "INSERT INTO ALLOCATE_COURSE(CourseCode, InstructorID) VALUES (@a0, @a1)";
            SqlCommand cm = new SqlCommand(query, sqlCon);
            cm.Parameters.AddWithValue("@a0", TextBox1.Text);

            cm.Parameters.AddWithValue("@a1", TextBox2.Text);
           
            int n = cm.ExecuteNonQuery();
            if (n > 0)
            {
                Label2.Text = "SUCESSFUL INSTRUCTOR ALLOCATION";
   
            }
            else
            {
                Label2.Text = "UNSUCCESSFUL INSTRUCTOR ALLOCATION";
            }
            sqlCon.Close();
        }
    }
}