<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentMain.aspx.cs" Inherits="StudentMain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Main Page</title>
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
                            <!--LINK TO STUDENT PROFILE-->
                           <li><a href="#"><img src="images/profile.png" alt="#"/></a></li>
                        </ul>
                     </div>
                  </div>
                </div>
            </div>
       </header>

        <!--SIDE PANEL FOR STUDENT MAIN PAGE-->
        <div id="mySidepanel" class="sidepanel">
         <a href="#Attendance">Attendance</a>
         <a href="#Marks">Marks</a>
         <a href="#">Transcript</a>
         <a href="#">Give Feedback</a>
      </div>

        <!--Making Profile of Academic Officer-->
        <div id="profile">
            <h3>Welcome </h3>
            <h3> </h3>
        </div>
       
        <!--ATTENDANCE-->
        <div id="Attendance">
        <div class="attendance"  style="margin-left:400px;">
            <nav class="navbar justify-content-end">
                <li class="nav-item">
                    <a class="nav-link" href="#course1">Course Code</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Course Code</a>
                </li>
            </nav>
        </div>

        <div class="container-fluid" id="course1" style="margin-left:385px;">
            <table class ="table table-bordered table-hover table-striped info w-50 offset-md-1">
                <thead>
                    <tr>
                        <th>LECTURE NO</th>
                        <th>DATE</th>
                        <th>PRESENCE</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>20I-0424</td>
                        <td>Samaha Anwar</td>
                        <td>Present</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
        <!--MARKS-->
        <div id="Marks">
         <div class="attendance" style="margin-left:400px;">
            <nav class="navbar justify-content-end">
                <li class="nav-item">
                    <a class="nav-link" href="#course1">Course Code</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Course Code</a>
                </li>
            </nav>
        </div>
        <div class="container-fluid" id="course" style="margin-left:385px;">
            <table class ="table table-bordered table-hover table-striped info w-50 offset-md-1">
                <thead>
                    <tr>
                        <th>ASSESSMENT ITEM</th>
                        <th>WEIGHTAGE</th>
                        <th>MARKS OBTAINED</th>
                         <th>TOTAL MARKS</th>
                         <th>AVERAGE</th>
                        <th>MINIMUM</th>
                        <th>MAXIMUM</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>20I-0424</td>
                        <td></td>
                        <td>Present</td>
                    </tr>
                </tbody>
            </table>
        </div>
      </div>
    </form>
</body>
</html>
