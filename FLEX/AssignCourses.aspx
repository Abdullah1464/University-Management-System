<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AssignCourses.aspx.cs" Inherits="AssignCourses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Assign Courses</title>
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
                            <!--LINK TO ACADEMIC OFFICER PROFILE-->
                           <li><a href="AcademicMainPage.aspx"><img src="images/profile.png" alt="#"/></a></li>
                        </ul>
                     </div>
                  </div>
                </div>
            </div>
       </header>

        <!--SidePanel-->
         <div id="mySidepanel" class="sidepanel">
         <a href="OfferCourses.aspx">Offer Courses</a>
         <a href="AssignCourses.aspx">Assign Student Courses</a>
         <a href="AssignCourses.aspx">Assign Section</a>
         <a href="AssignInstructor.aspx">Assign Instructor Courses</a>
      </div>

        <!--ASSIGN COURSES-->
        <div id="offer_courses" class="course">
            <h1 style="margin-top:70px; margin-left:400px;">ASSIGN COURSES</h1>
            <div class="container-fluid">
                <div class="row" style="margin-top:50px;"">
                    <div class="col-sm-4">
                        <h3>STUDENT REGISTRATION ID</h3>
                         <asp:TextBox required='true' CssClass="transfot_form" placeholder="Student ID" type="text" ID="StudentID" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <h3>COURSE CODE</h3>
                         <asp:TextBox required='true' CssClass="transfot_form" placeholder="Course Code" type="text" ID="CourseCode" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <h3>COURSE NAME</h3>
                         <asp:TextBox CssClass="transfot_form" placeholder="Course Name" type="text" ID="CourseName" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="row offset-md-4" style="margin-top:40px;">
                     <asp:Button Text="CHECK" Cssclass="get_now" runat="server" ID="check" OnClick="check_Click"></asp:Button>
                </div>
                <div class="row" style="margin-top:40px;">
                     <h3>
                         <asp:Label ID="Label1" runat="server"></asp:Label>
                     </h3>
                </div>
                <div class="row offset-4" style="margin-top:20px;">
                     <h3>
                         <asp:TextBox CssClass="transfot_form" placeholder="Section Name" type="text" ID="TextBox1" runat="server"></asp:TextBox>
                     </h3>
                </div>
                <div class="row offset-4" style="margin-top:20px;">
                     <asp:Button Text="Register" Cssclass="get_now" runat="server" ID="Register" OnClick="Register_Click"></asp:Button>
                </div>
                <div class="row offset-4" style="margin-top:20px;">
                     <h3>
                         <asp:Label ID="Label2" runat="server"></asp:Label>
                     </h3>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
