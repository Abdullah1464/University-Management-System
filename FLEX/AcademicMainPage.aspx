<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AcademicMainPage.aspx.cs" Inherits="AcademicMainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Academic Officer</title>
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
                           <li><a href="#profile"><img src="images/profile.png" alt="#"/></a></li>
                        </ul>
                     </div>
                  </div>
                </div>
            </div>
       </header>

       <div id="mySidepanel" class="sidepanel">
         <a href="OfferCourses.aspx">Offer Courses</a>
         <a href="AssignCourses.aspx">Assign Student Courses</a>
         <a href="AssignCourses.aspx">Assign Section</a>
         <a href="AssignInstructor.aspx">Assign Instructor Courses</a>
      </div>

        <!--Making Profile of Academic Officer-->
        <div id="profile" class="academic">
            <h1>Welcome 
                <asp:Label ID="Fname" runat="server"></asp:Label>
              &nbsp;<asp:Label ID="Lname" runat="server" ></asp:Label>
            </h1>
            <br/>
            <h1>Department: 
                <asp:Label ID="Label1" runat="server" ></asp:Label>
            </h1>
        </div>

       <footer></footer>
    </form>
</body>
</html>
