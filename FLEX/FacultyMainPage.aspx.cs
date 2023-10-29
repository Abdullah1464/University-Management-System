//using System.Windows.Forms;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Threading;
using System.Web.UI.HtmlControls;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Panel = System.Web.UI.WebControls.Panel;

public partial class Faculty_MainPage : System.Web.UI.Page
{
    string ID;
    string Name;
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        using (SqlConnection sqlCon = new SqlConnection("Data Source=ABDULLAHS-NOTEB" + "\\SQLEXPRESS;Initial Catalog=projectDatabase2;Integrated Security=True"))
        {
            string query = "SELECT CONCAT(Instructor.FirstName, ' ', Instructor.LastName) AS Name,ALLOCATE_COURSE.CourseCode,SecName,CourseName FROM ALLOCATE_COURSE INNER JOIN CourseSection ON ALLOCATE_COURSE.CourseCode = CourseSection.CourseCode INNER JOIN TEACHES_COURSE ON TEACHES_COURSE.CourseSecID = CourseSection.SecID INNER JOIN Instructor ON Instructor.InstructorID = TEACHES_COURSE.InstructorID INNER JOIN COURSE ON ALLOCATE_COURSE.CourseCode = COURSE.COURSECODE WHERE COURSE.COURSEName like @a1";

            SqlCommand cm = new SqlCommand(query, sqlCon);
            cm.Parameters.AddWithValue("@a1", course.Text);
            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataTable dt = new DataTable();
            da.Fill(dt);
            grdUser.DataSource = dt;
            grdUser.DataBind();
            //bool chck_data = false;
            HtmlGenericControl div;
            for (int i = 0; i < grdUser.Rows.Count; i++)
            {
                div = new HtmlGenericControl("div");
                div.ID = "dv" + i;
                div.InnerText = grdUser.Rows[i].Cells[1].Text;
                //chck_data = true;
            }
        }
        Session["CourseName"] = course.Text;

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        ID = Session["ID"].ToString();
        Name = Session["Name"].ToString();
        using (SqlConnection sqlCon = new SqlConnection("Data Source=ABDULLAHS-NOTEB" + "\\SQLEXPRESS;Initial Catalog=projectDatabase2;Integrated Security=True"))
        {
            string query = "SELECT CONCAT(Instructor.FirstName, ' ', Instructor.LastName) AS Name, ALLOCATE_COURSE.CourseCode,SecName,CourseName FROM ALLOCATE_COURSE INNER JOIN CourseSection ON ALLOCATE_COURSE.CourseCode = CourseSection.CourseCode INNER JOIN TEACHES_COURSE ON TEACHES_COURSE.CourseSecID = CourseSection.SecID INNER JOIN Instructor ON Instructor.InstructorID = TEACHES_COURSE.InstructorID INNER JOIN COURSE ON ALLOCATE_COURSE.CourseCode = COURSE.COURSECODE WHERE TEACHES_COURSE.InstructorID like @a1";
           
            SqlCommand cm = new SqlCommand(query, sqlCon);
            cm.Parameters.AddWithValue("@a1", ID);
            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataTable dt = new DataTable();
            da.Fill(dt);
            grdUser.DataSource = dt;
            grdUser.DataBind();
            //bool chck_data = false;
            HtmlGenericControl div;
            for (int i = 0; i < grdUser.Rows.Count; i++)
            {
                div = new HtmlGenericControl("div");
                div.ID = "dv" + i;
                div.InnerText = grdUser.Rows[i].Cells[1].Text;
                //chck_data = true;
            }
        }
    }


}