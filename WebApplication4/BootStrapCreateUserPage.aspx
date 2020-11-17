<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BootStrapCreateUserPage.aspx.cs" Inherits="WebApplication4.BootStrapCreateUserPage" %>

<!DOCTYPE html>
<html>
<head>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>Create An Account</title>
    <!--Made with love by Mutiullah Samim -->

    <!--Bootsrap 4 CDN-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!--Fontawesome CDN-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

    <!--Custom styles-->
    <link rel="stylesheet" type="text/css" href="styles.css">
    <link rel="stylesheet" type="text/css" href="../css/Landing.css" />

</head>

<body style="background: black" class="page-holder bg-cover">
    <div class="container">
        <div class="d-flex justify-content-center h-100">
            <div class="card" style="width: 20rem; margin-top: 200px; background: transparent;">
                <div class="card-header">
                    <h3 style="color: white;">Create An Account</h3>
                </div>
                <div class="card-body" style="color: white;">
                    <form id="form" runat="server">
                        <div class="form-group">
                            <asp:Label runat="server" ID="EmailLabel"
                                AssociatedControlID="EmailTextBox" Text="Email" />
                            <asp:TextBox runat="server" ID="EmailTextBox"
                                CssClass="form-control" placeholder="Please Enter Your Email Address..." />
                        </div>
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
                            <input type="submit" value="Register" class="btn float-right  btn-success btn-block login_btn" runat="server" onserverclick="Button1_Click">
                            <br />
                            <asp:Label ID="LoginLabel1" runat="server" Style="text-align: center"></asp:Label>
                        </div>
                    </form>
                    <div class="d-flex justify-content-center">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <asp:Image ID="Logo" runat="server" ImageUrl="~/images/smart_fit_logo.png" class="dvd" Style="z-index: -1" />

</body>
</html>
