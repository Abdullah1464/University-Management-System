using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MarksDistribution : System.Web.UI.Page
{
    string selectedValue = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        selectedValue = DropDownList1.SelectedValue;

        Label Label1 = (Label)FindControl("Label1");
        Label1.Text = selectedValue;

        Label Label2 = (Label)FindControl("Label2");
            Label2.Text = "1";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        using (SqlConnection sqlCon = new SqlConnection("Data Source=ABDULLAHS-NOTEB" + "\\SQLEXPRESS;Initial Catalog=projectDatabase2;Integrated Security=True"))
        {
            sqlCon.Open();
            string query = "INSERT INTO MARKS_DISTRIBUTION_COURSE VALUES('MATH101',@a2,@a1)";
            float data = float.Parse(TextBox1.Text);
            if (data > 100 | data < 0)
            {
                Label Label3 = (Label)FindControl("Label3");
                Label3.Text = "INVALID RANGE!";
            }
            else
            {
                SqlCommand cm = new SqlCommand(query, sqlCon);
                cm.Parameters.AddWithValue("@a1", data);
                cm.Parameters.AddWithValue("@a2", DropDownList1.SelectedValue);
                Label Label3 = (Label)FindControl("Label3");
                Label3.Text = "Successfully Saved!";
                int n = cm.ExecuteNonQuery();
            }
            

            sqlCon.Close();
        }
    }
}