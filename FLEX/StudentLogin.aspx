<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentLogin.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Login</title>
      <!-- bootstrap css -->
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
         <div class="banner_main">
             <!--Logo-->
           <div class="container-fluid">
                  <div class="col-md-4 col-sm-4">
                        <img src="images/flex-logo-blue.png" alt="#" style="height:80px;"/>
                  </div>
            </div>
       <div class="container-fluid">
           <div class="row">
               <div class="col-md-7 col-lg-5">
                    <div class="text-bg">
                        <h1>Student Login</h1>
                    </div>   
               </div>
           </div>

           <!--LOGIN FORM-->
         <div class="row" style="margin-left:200px;">
         
             <div class="col-md-12">
                         <h3>Login to continue</h3>
             </div>
             
             <div class="col-md-12">
                 <br />
                 <asp:TextBox required='true' CssClass="transfot_form" placeholder="Registration ID" type="text" name="ID" ID ="ID" runat="server"></asp:TextBox>
             </div>
             <br />
             <div class="col-md-12">
                 <br />
                   <asp:TextBox required='true' CssClass="transfot_form" placeholder="Password" type="password" name="student_password" ID ="student_password" runat="server"></asp:TextBox>
             </div>
             <div class="col-md-12">
                 <br />
                  <asp:Button ID="btnLogin" Text="Login" Cssclass="get_now" runat="server" OnClick="btnLogin_Click"></asp:Button>
                  <asp:Label runat="server" ID="lblError" ForeColor="Red" />
              </div>
             <div class="col-md-12">
                 <br />
                   <asp:Label runat="server" ID="Label1" ForeColor="Red" />
              </div>
             <div class="col-md-12">
                 <br />
                   <h3>Not Signed Up? <asp:HyperLink runat="server" Text="Sign Up Now" NavigateUrl="~/StudentSignUp.aspx"></asp:HyperLink></h3>
             </div>
      </div>
       </div>
     </div>
        
    </form>
</body>
</html>