<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateUserPage.aspx.cs" Inherits="WebApplication4.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/Bootstrap.css" rel="stylesheet" />
    </head>
<body style="color: #00FFFF; background-color: #000000">
    <form id="form1" runat="server">
        <div style="text-align: center">
            <strong>Witness Fitness Create A User<br />
            Created by David, Mark, Josh, Emmnuel, and Uche<br />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="https://localhost:44356/LoginPage.aspx" OnClick="LinkButton1_Click">Click Here to Login if you have an account</asp:LinkButton>
            </strong></div>
        <p>
            Enter your desired username and password!</p>
        <p>
            Email:
            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
        </p>
        <p>
            Username:
            <asp:TextBox ID="Username" runat="server"></asp:TextBox>
        </p>
        <p>
            Password:
            <asp:TextBox ID="Password" runat="server"></asp:TextBox>
        </p>
        <p>
            <strong>
            <asp:Button ID="LoginButton" runat="server" OnClick="Button1_Click" Text="Register" />
            </strong>
        </p>
        <p>
            <asp:Label ID="Label1" runat="server" PostBackUrl="https://localhost:44356/LoginPage.aspx"></asp:Label>
        </p>
        <asp:Image ID="Image1" runat="server" Height="214px" ImageUrl="~/gym-logo.jpg" Width="327px" />
    </form>
</body>
</html>
