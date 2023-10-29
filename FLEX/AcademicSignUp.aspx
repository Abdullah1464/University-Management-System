<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AcademicSignUp.aspx.cs" Inherits="AcademicSignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Academic Sign Up</title>
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
                        <h1>Academic Officer Sign UP</h1>
                    </div>   
               </div>
           </div>

           <!--SIGN UP FORM-->
         <div class="row" style="margin-left:200px;">
         
             <div class="col-md-12">
                 <asp:TextBox required='true' CssClass="transfot_form" placeholder="First Name" type="text" name="FName" ID ="FName" runat="server"></asp:TextBox>
             </div>
             <br />
             <div class="col-md-12">
                 <br />
                   <asp:TextBox required='true' CssClass="transfot_form" placeholder="Last Name" type="text" name="LName" ID ="LName" runat="server"></asp:TextBox>
             </div>
             <div class="col-md-12">
                 <br />
                   <asp:TextBox required='true' CssClass="transfot_form" placeholder="Email" type="text" name="email" ID ="email" runat="server"></asp:TextBox>
             </div>
             <div class="col-md-12">
                 <br />
                   <asp:TextBox required='true' CssClass="transfot_form" placeholder="Password" type="password" name="password" ID ="password" runat="server"></asp:TextBox>
             </div>
             <div class="col-md-12">
                 <br />
                   <asp:TextBox required='true' CssClass="transfot_form" placeholder="Department" type="text" name="dept" ID ="dept" runat="server"></asp:TextBox>
             </div>
             <div class="col-md-12">
                 <br />
                  <asp:Button ID="SignUp" Text="SIGN UP" Cssclass="get_now" runat="server" OnClick="btnSignup_Click"></asp:Button>
                 <br />  
                 <asp:Label ID="lblMessage" runat="server" Visible="false"></asp:Label>

              </div>
             <div class="col-md-12">
                 <br />
                   <h3>Aready signed up? Click to <asp:HyperLink runat="server" Text="LOGIN" ID="AcademicLogin"></asp:HyperLink></h3>
             </div>
          
      </div>
       </div>
     </div>
    </form>
</body>
</html>
