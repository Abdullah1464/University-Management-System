<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Main</title>
   
     <!-- bootstrap css -->
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
</head>
<body>
    <form id="form1" runat="server">
        <header class="footer">
            <div class="container-fluid">
               <div class="row">
                  <div class="col-md-4 col-sm-4">
                        <img src="images/flex-logo-blue.png" alt="#" />
                  </div>
               </div>
            </div>
      </header>
        <div id="service" class="service">
         <div class="container">
            <div class="row">
               <div class="col-md-10 offset-md-1">
                  <div class="titlepage">
                     <h2>Select Your Role</h2>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-md-12 offset-md-1">
                  <div class="service_main">
                     <div class="service_box blu_colo">
                        <i><img src="images/academic.png" alt="#"/> </i>&nbsp;
                         <br />
                         <h4>
                         <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="'poppins',sans-serif" NavigateUrl="~/AcademicLogin.aspx">ACADEMIC OFFICER</asp:HyperLink>
                        </h4>
                     </div>
                     <div class="service_box yelldark_colo">
                        <i><img src="images/faculty.png" alt="#"/>
                         </i>&nbsp;
                         <br />
                        <h4><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/FacultyLogin.aspx">FACULTY</asp:HyperLink></h4>
                     </div>
                     <div class="service_box yell_colo">
                        <i><img src="images/student.png" alt="#"/></i>
                        &nbsp;
                         <br />
                        <h4><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/StudentLogin.aspx">STUDENT</asp:HyperLink></h4>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>

    </form>

    </body>
</html>
