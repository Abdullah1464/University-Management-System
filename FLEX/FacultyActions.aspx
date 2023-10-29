<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FacultyActions.aspx.cs" Inherits="FacultyActions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Faculty Page</title>
      <!-- bootstrap css -->
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
       <header class="footer">
            <!--Logo-->
           <div class="container-fluid">
               <div class="row">
                  <div class="col-md-4 col-sm-4">
                        <a href="Main.aspx"><img src="images/flex-logo-blue.png" alt="#" style="height:80px;"/></a>
                  </div>
                <!--Adding profile-->
                   <div class="col-md-8 col-sm-8">
                      <div class="right_bottun">
                        <ul class="conat_info">
                            <!--LINK TO FACULTY PROFILE-->
                           <li><a href="#"><img src="images/profile.png" alt="#"/></a></li>
                        </ul>
                     </div>
                  </div>
                </div>
            </div>
       </header>


        <!--MAKING THE ACTION BUTTONS-->
        <div class="row" style="margin-top:100px; margin-left:40px;">
               <div class="col-md-12">
                  <div class="service_main">
                     <div class="service_box blu_colo">
                        <i><img src="images/academic.png" alt="#"/> </i>&nbsp;
                         <br />
                         <h4>
                         <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="'poppins',sans-serif" NavigateUrl="~/Attendance.aspx">MARK ATTENDANCE</asp:HyperLink>
                        </h4>
                     </div>
                     <div class="service_box yelldark_colo">
                        <i><img src="images/faculty.png" alt="#"/>
                         </i>&nbsp;
                         <br />
                        <h4><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/MarksDistribution.aspx">MARKS DISTRIBUTION</asp:HyperLink></h4>
                     </div>
                     <div class="service_box yell_colo">
                        <i><img src="images/student.png" alt="#"/></i>
                        &nbsp;
                         <br />
                        <h4><asp:HyperLink ID="HyperLink3" runat="server">EVALUATION REPORT</asp:HyperLink></h4>
                     </div>
                      <div class="service_main">
                     <div class="service_box blu_colo">
                        <i><img src="images/academic.png" alt="#"/> </i>&nbsp;
                         <br />
                         <h4>
                         <asp:HyperLink ID="HyperLink4" runat="server" Font-Names="'poppins', sans-serif">GRADE REPORT</asp:HyperLink>
                        </h4>
                     </div>
                     <div class="service_box yelldark_colo">
                        <i><img src="images/faculty.png" alt="#"/>
                         </i>&nbsp;
                         <br />
                        <h4><asp:HyperLink ID="HyperLink5" runat="server">VIEW FEEDBACK</asp:HyperLink></h4>
                     </div>
                  </div>
               </div>
            </div>
    </form>
</body>
</html>
