using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AcademicMainPage : System.Web.UI.Page
{
    string id = "", usertype = "", username = "";
    string F = "", L = "", D = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["FName"] != null)
                F = Session["FName"].ToString();
            if (Session["ID"] != null)
                id = Session["ID"].ToString();
            if (Session["LName"] != null)
                L = Session["LName"].ToString();
            if (Session["Dept"] != null)
                D = Session["Dept"].ToString();


            Fname.Text = F;
            Lname.Text = L;
            Label1.Text = D;
        }

    }
}