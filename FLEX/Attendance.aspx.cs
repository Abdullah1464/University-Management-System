using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class Attendance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Fetch data from the database based on the query
            // Fetch data from the database based on the query
            //string connectionString = ConfigurationManager.ConnectionStrings["Data Source=ABDULLAHS-NOTEB\"+\"\\\\SQLEXPRESS;Initial Catalog=projectDatabase2;Integrated Security=True"].ConnectionString;
            string query = "SELECT CONCAT(Student.FirstName, ' ', Student.LastName) AS StudentName,RegID FROM Student " +
                           "JOIN MAKE_COURSE_SECTION ON Student.RegID = MAKE_COURSE_SECTION.StudentID " +
                           "JOIN CourseSection ON MAKE_COURSE_SECTION.CourseSecID = CourseSection.SecID " +
                           "JOIN Course ON CourseSection.CourseCode = Course.CourseCode " +
                           "WHERE Course.CourseName = @a1";
            //cm.Parameters.AddWithValue("@a1", ID.Text);
            string CourseName = Session["CourseName"].ToString();

            using (SqlConnection connection = new SqlConnection("Data Source=ABDULLAHS-NOTEB" + "\\SQLEXPRESS;Initial Catalog=projectDatabase2;Integrated Security=True"))
            {
                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();
                command.Parameters.AddWithValue("@a1", CourseName);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable dataTable = new DataTable();
                adapter.Fill(dataTable);

                GridView1.DataSource = dataTable;
                GridView1.DataBind();
            }
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        // Save the attendance data to the database
        foreach (GridViewRow row in GridView1.Rows)
        {
            string regId = row.Cells[0].Text;
            string attendanceValue = ((DropDownList)row.FindControl("ddlAttendance")).SelectedValue;

            // Save the attendance data to the database using the regId and attendanceValue
            // Add your database saving logic here
        }

        lblMessage.Text = "<<br><br>Attendance saved successfully!";
    }
}

