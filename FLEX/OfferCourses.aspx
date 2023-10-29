<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OfferCourses.aspx.cs" Inherits="OfferCourses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Offer Courses</title>
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

        <!--Offer Courses-->
        <div id="offer_courses" class="course">
            <h1>Semester: 
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </h1>
            <h3>       
                <asp:Label ID="Label2" runat="server"></asp:Label>
                
               <!--<asp:Panel ID="Panel1" runat="server">
                </asp:Panel>-->
               
            </h3>
            <div class="row">
                <h3 style ="text-align:center;">ENTER COURSE CODE</h3>     
            </div>
            <div class="row">
                <asp:TextBox CssClass="transfot_form" placeholder="Course Code" type="text" ID="CourseCode" runat="server"></asp:TextBox>
            </div>
            <div class="row">
                 <h3>
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </h3>
            </div>
            
            <h3 style="margin-left:470px;"><asp:Button runat="server" Text="Offer" ID="offer_btn" CssClass="get_now" OnClick="offer_btn_Click" /></h3>
            <h3 style="margin-left:400px;"><asp:HyperLink runat="server" Text="CLICK HERE TO GENERATE REPORT" ID="offerReport"></asp:HyperLink></h3>
        </div>
    </form>
</body>
</html>
