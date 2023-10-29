<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MarksDistribution.aspx.cs" Inherits="MarksDistribution" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Marks Distribution</title>
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


        <!--MARKS DISTRIBUTION-->
        <div class="container-fluid">
            <div class="row offset-md-1 attendance">
                <div class="col-sm-6">
                    <h3>COURSE</h3>
                </div>
                <div class="col-sm-6">
                    <h3>SECTION</h3>
                </div>
            </div>

            <!--ADDING EVALUATION DROPDOWN-->
            <div class="row offset-md-1" style="margin-top:40px;">
                <div class="col-sm-3">
                    <h2>Evaluation Type</h2>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="Assignment">Assignment</asp:ListItem>
                    <asp:ListItem Value="Final">Final</asp:ListItem>
                    <asp:ListItem Value="Quiz">Quiz</asp:ListItem>
                    <asp:ListItem Value="Sessional">Sessional</asp:ListItem>
                </asp:DropDownList>
                </div>
                <div class="col-sm-6">
                    <img src="images/add.png" alt="#" />
                <asp:Button CSSClass="get_now" ID="Button1" runat="server" Text="Add" OnClick="Button1_Click"/>
                </div>
            </div>
            <div class="container-fluid" style="margin-top:20px;">
            <table class ="table table-hover info offset-md-1">
                <thead>
                    <tr>
                        <th>Sr#</th>
                        <th>EVALUATION</th>
                        <th>WEIGHTAGE</th>
                        <th>RANGE</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                        <td>Range: 0 to 100</td>
                    </tr>
                </tbody>
            </table>
        </div>

            <div class="row offset-5" style="text-align:center; margin-top:30px;">
                <asp:Button CSSClass="get_now" ID="Button2" runat="server" Text="SAVE" OnClick="Button2_Click" />
            </div>
             <div class="row offset-5" style="text-align:center; margin-top:30px;">
                <h3> <asp:Label ID="Label3" runat="server"></asp:Label></h3>
            </div>
        </div>
    </form>
</body>
</html>
