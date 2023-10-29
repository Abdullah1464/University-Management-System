<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Attendance.aspx.cs" Inherits="Attendance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Attendance</title>
    <!-- bootstrap css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="css/style.css" />
    <style>
            table {
              width: 80%; 
              margin-left: 10%; 
              border: none;
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
            <!--Logo-->
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-4 col-sm-4">
                        <a href="Main.aspx"><img src="images/flex-logo-blue.png" alt="#" style="height:80px;" /></a>
                    </div>
                    <!--Adding profile-->
                    <div class="col-md-8 col-sm-8">
                        <div class="right_bottun">
                            <ul class="conat_info">
                                <!--LINK TO FACULTY PROFILE-->
                                <li><a href="#"><img src="images/profile.png" alt="#" /></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <!--MAKING THE ATTENDANCE SHEET-->
        <div class="container-fluid">
            <div class="row offset-md-1 attendance">
                <div class="col-sm-12">
                    <h3>DATE</h3>
                    <input type="date" name="date" runat="server" />
                </div>
            </div>
        </div>

        <!--Dynamic Table-->
        <div class="container-fluid">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="RegID" HeaderText="REGISTRATION ID" />
                    <asp:BoundField DataField="StudentName" HeaderText="STUDENT NAME" />
                    <asp:TemplateField HeaderText="DATE">
                        <ItemTemplate>
                            <asp:DropDownList ID="ddlAttendance" runat="server">
                                <asp:ListItem>P</asp:ListItem>
                                <asp:ListItem>A</asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>

        <!--Save Button-->
        <div class="container-fluid">
            <div class="row offset-md-1">
                <div class="col-sm-12 text-center">
                    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" CssClass="btn btn-primary" />
                    <asp:Label runat="server" ID="lblMessage" ForeColor="Red" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
