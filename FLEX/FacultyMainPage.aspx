<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FacultyMainPage.aspx.cs" Inherits="Faculty_MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Faculty Main Page</title>
      <script src="https://cdn.tailwindcss.com"></script>
      <!-- bootstrap css -->
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="css/style.css" />
        <style>
            table {
              width: 90%; 
              margin-left: 5%;   
            }
            th, td {
               height: 50px;
               border-bottom: 1px solid #ddd;
               text-align: left;
            }
        </style>
</head>

<body>
    <form id="form1" runat="server">
        <header class="footer">
            <!-- Logo -->
           <div class="container-fluid">
               <div class="row">
                  <div class="col-md-4 col-sm-4">
                        <a href="Main.aspx"><img src="images/flex-logo-blue.png" alt="#" style="height:80px;" /></a>
                  </div>
                <!-- Adding profile -->
                   <div class="col-md-8 col-sm-8">
                      <div class="right_bottun">
                        <ul class="conat_info">
                            <!-- LINK TO FACULTY PROFILE -->
                           <li><a href="#"><img src="images/profile.png" alt="#" /></a></li>
                        </ul>
                     </div>
                  </div>
                </div>
            </div>
       </header>

        <div id="main" class="faculty_main">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-4">
                        <h3>Campus</h3>
                    </div>
                    <div class="col-sm-4">
                        <h3>Semester</h3>
                    </div>
                    <div class="col-sm-4">
                        <h3>Search Course</h3>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-4">
                        <asp:DropDownList CssClass="transfot_form" ID="ddlCampus" runat="server">
                            <asp:ListItem Text="Islamabad" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Lahore" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Chiniot-Faisalabad" Value="3"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-sm-4">
                        <asp:DropDownList CssClass="transfot_form" ID="ddlSemester" runat="server">
                            <asp:ListItem Text="Spring 2023" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Fall 2022" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Summer 2022" Value="3"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-sm-4">
                         <asp:TextBox required='true' CssClass="transfot_form" BorderColor="Black" placeholder="" type="text" name="course" ID ="course" runat="server"></asp:TextBox>
                        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CssClass="btn btn-primary text-black hover:text-white" />


                    </div>
               
                </div>

                <br /><br />
                <div class="w-full grid justify-items-stretch"> 
                    <asp:label runat="server" id="no_data_label" Text="" class="justify-self-center text-center text-gray-600"></asp:label>
                     <asp:GridView ID="grdUser" runat="server" AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundField DataField="CourseCode" HeaderText="Code" />
                        <asp:TemplateField HeaderText="Title">
                            <ItemTemplate>
                                 <a id="courseName" href='FacultyActions.aspx?CourseName=<%# Eval("CourseName") %>'><%# Eval("CourseName") %></a>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:BoundField DataField="SecName" HeaderText="Section" />
                        <asp:BoundField DataField="Name" HeaderText="Teacher" />


                    </Columns>
                </asp:GridView>
            
        </div>
            </div>
        </div>
    </form>
</body>
</html>
