<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="WebApplication4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/Bootstrap.css" rel="stylesheet" />
    </head>
<body style="color: #00FFFF; background-color: #000000">
    <form id="form1" runat="server">
        <div style="text-align: center">
            <strong>Witness Fitness Login Page Demo<br />
            Created by David, Mark, Josh, Emmnuel, and Uche</strong></div>
        <p>
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="https://localhost:44356/CreateUserPage.aspx">Click Here To Register An Account</asp:LinkButton>
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
            <asp:Button ID="LoginButton" runat="server" OnClick="Button1_Click" Text="Login" />
            </strong>
            
        </p>
        <p>
            <asp:Label ID="LoginLabel1" runat="server"></asp:Label>
        </p>
        <asp:Image ID="Image1" runat="server" Height="214px" ImageUrl="~/gym-logo.jpg" Width="327px" />
    </form>
</body>
</html>
