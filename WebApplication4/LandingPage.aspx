<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LandingPage.aspx.cs" Inherits="WebApplication4.LandingPage" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap" />
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <%--<script>$('#loginModal').modal('show')</script>--%>
    <title>Smart Fit</title>
    <!--Made with love by Mutiullah Samim. -->

    <!--Bootsrap 4 CDN-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />

    <!--Fontawesome CDN-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous" />

    <!--Custom styles-->
    <link rel="stylesheet" type="text/css" href="styles.css" />
    <link rel="stylesheet" type="text/css" href="../css/Landing.css" />

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>


<body style="background: black">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>

    <div class="container-fluid">

        <div class="border" style="display:block; justify-content:center;">
            <h1 style="color: white" class="greeting">Welcome to Smart fit!</h1>
            <p style="color: white" class="subGreeting">Register for new account or login to a previous account to get started</p>
            <a href="BootStrapCreateUserPage.aspx">
                <input type="button" value="Create new account" class="btn btn-success subGreeting" runat="server" />
            </a>
            <%--<a href="BootStrapLoginPage.aspx">--%>
            <input type="button" value="Login" class="btn btn-primary subGreeting" data-toggle="modal" data-target="#loginModal" runat="server" />
            <%--</a>--%>
        </div>
    </div>


        <!-- loginModal -->
        <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModal" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-sm" role="document">
                <div class="modal-content" style="background: transparent;">

                    <div class="modal-header">
                        <h5 class="modal-title" style="color: white;" id="exampleModalLongTitle">Login</h5>
                        <button type="button" class="close" style="color:white;" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>

                    <div class="modal-body">
                        <form id="form" runat="server">
                            <div class="form-group">
                                <asp:Label runat="server" Style="color: white;" ID="UsernameLabel"
                                    AssociatedControlID="UsernameTextBox" Text="Username" />
                                <asp:TextBox runat="server" ID="UsernameTextBox"
                                    CssClass="form-control" placeholder="Please Enter Username..." />
                            </div>
                            <div class="form-group">
                                <asp:Label runat="server" Style="color: white;" ID="PasswordLabel"
                                    AssociatedControlID="PasswordTextBox" Text="Password" />
                                <asp:TextBox runat="server" ID="PasswordTextBox" TextMode="Password"
                                    CssClass="form-control" placeholder="Please Enter Password..." />
                            </div>
                            <%--<button type="button" class="btn btn-primary btn-block" runat="server" onserverclick="Button1_Click">Login</button>--%>
                             <input type="submit" value="Login" class="btn btn-primary btn-block" runat="server" onserverclick="Button1_Click"/>
                        </form>
                    </div>

                    <div class="modal-footer">
                        <div class="justify-content-left links" style="color: white;">
                            Don't have an account?   <a href="BootStrapCreateUserPage.aspx" class="btn btn-success">Register</a>
                        </div>
                    </div>

                </div>
            </div>
        </div>

    <asp:Image ID="Logo" runat="server" ImageUrl="~/images/smart_fit_logo.png" class="dvd" Style="z-index: -1" />
</body>
</html>
