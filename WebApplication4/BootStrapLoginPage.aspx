<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BootStrapLoginPage.aspx.cs" Inherits="WebApplication4.BootStrapLoginPage" %>




<!DOCTYPE html>
<html>
<head>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>Login Page</title>
    <!--Made with love by Mutiullah Samim -->

    <!--Bootsrap 4 CDN-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!--Fontawesome CDN-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

    <!--Custom styles-->
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body style="background: url(https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/113738439/original/cfc81c244cca3ffab7c7b57c696eba5bac95e62d/design-sports-gym-and-fitness-logo.jpg); background-size: cover" class="page-holder bg-cover">
    <div class="container">
        <div class="d-flex justify-content-center h-100">
            <div class="card" style="width: 20rem; margin-top: 200px;">
                <div class="card-header">
                    <h3>Sign In</h3>
                </div>
                <div class="card-body">
                    <form id="form" runat="server">
                        <div class="form-group">
                            <asp:Label runat="server" ID="UsernameLabel"
                                AssociatedControlID="UsernameTextBox" Text="Username" />
                            <asp:TextBox runat="server" ID="UsernameTextBox"
                                CssClass="form-control" placeholder="Please Enter Username..." />
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" ID="PasswordLabel"
                                AssociatedControlID="PasswordTextBox" Text="Password" />
                            <asp:TextBox runat="server" ID="PasswordTextBox"
                                CssClass="form-control" placeholder="Please Enter Password..." />
                        </div>


                        <div class="row align-items-center remember">
                        </div>
                        <div class="form-group">
                            <input type="submit" value="Login" class="btn float-right login_btn" runat="server" onserverclick="Button1_Click">
                            <br />
                            <asp:Label ID="LoginLabel1" runat="server" Style="text-align: center"></asp:Label>
                        </div>
                    </form>
                    <div class="d-flex justify-content-center links">
                        Don't have an account?   <a href="BootStrapCreateUserPage.aspx">Sign Up</a>
                    </div>
                    <div class="d-flex justify-content-center">
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
