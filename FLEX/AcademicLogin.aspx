<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AcademicLogin.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Academic Login</title>
    
     <!-- bootstrap css -->
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="css/style.css" />
      
</head>
<body>
    <form id="form1" runat="server">
    <div class="banner_main">
       <div class="container-fluid">
           <!--Logo-->
           <div class="container-fluid">
                  <div class="col-md-4 col-sm-4">
                       <a href="Main.aspx"><img src="images/flex-logo-blue.png" alt="#" style="height:80px;"/></a>
                  </div>
            </div>


           <div class="row">
               <div class="col-md-7 col-lg-5">
                    <div class="text-bg">
                        <h1>Academic Officer Login</h1>
                    </div>   
               </div>
           </div>

           <!--LOGIN FORM-->
         <div class="row" style="margin-left:200px;">
         <form class="transfot">
             <div class="col-md-12">
                         <h3>Login to continue</h3>
             </div>
             
             <div class="col-md-12">
                 <br />
                 <asp:TextBox required='true' CssClass="transfot_form" placeholder="Registration ID" type="text" name="ID" ID="ID" runat="server"></asp:TextBox>
             </div>
             <br />
             <div class="col-md-12">
                 <br />
                   <asp:TextBox required='true' CssClass="transfot_form" placeholder="Password" type="password" name="admin_password" ID="admin_password" runat="server"></asp:TextBox>
             </div>
             <div class="col-md-12">
                 <br />
                  <asp:Button ID="btnLogin" Text="Login" Cssclass="get_now" runat="server" OnClick="btnLogin_Click"></asp:Button>
                   
              </div>
             <div class="col-md-12">
                 <br />
                   <asp:Label runat="server" ID="lblError" ForeColor="Red" />
              </div>
             <div class="col-md-12">
                 <br />
                   <h3>Not Signed Up? <asp:HyperLink runat="server" Text="Sign Up Now" NavigateUrl="~/AcademicSignUp.aspx"></asp:HyperLink></h3>
             </div>
           </form>
      <!--</div>-->
       </div>
     </div>
        
      
    </form>
</body>
    
</html>