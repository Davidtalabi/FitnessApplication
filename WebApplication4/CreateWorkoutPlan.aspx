<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateWorkoutPlan.aspx.cs" Inherits="WebApplication4.CreateWorkoutPlan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="css/Bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        #form1 {
            color: #00FFFF;
            background-color: #000000;
        }
    </style>
</head>
<body style="background-color: #000000">
    <form id="form1" runat="server">
        <asp:Menu ID="Menu1" runat="server" BackColor="#E3EAEB" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#666666" StaticSubMenuIndent="10px" Orientation="Horizontal">
                <DynamicHoverStyle BackColor="#666666" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#E3EAEB" />
                <DynamicSelectedStyle BackColor="#1C5E55" />
                <Items>
                    <asp:MenuItem Target="~/CreateUserPage.aspx" Text="Create Account" Value="Create Account" NavigateUrl="~/CreateUserPage.aspx"></asp:MenuItem>
                    <asp:MenuItem Target="~/LoginPage.aspx" Text="Sign In" Value="Sign In" NavigateUrl="~/LoginPage.aspx"></asp:MenuItem>
                    <asp:MenuItem Target="~/CreateWorkoutPlan.aspx" Text="Create Workout Plan" Value="Create Workout Plan" NavigateUrl="~/CreateWorkoutPlan.aspx"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ViewDataByAge.aspx" Target="~/ViewDataByAge.aspx" Text="View User Data By Age" Value="View User Data By Age"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ViewUserChartDataV2.aspx" Target="~/ViewUserChartDataV2.aspx" Text="View Data By Gender" Value="View Data By Gender"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#666666" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#1C5E55" />
            </asp:Menu>
        <div>
            <br />
            Create A workout Plan With Smart Fit!</div>
        <p>
            Gender:
            <asp:DropDownList ID="Gender" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            Age:
            <asp:TextBox ID="Age" runat="server"></asp:TextBox>
        </p>
        <p>
            Height (Inches):
            <asp:TextBox ID="Height" runat="server"></asp:TextBox>
        </p>
        <p>
            Weight (lbs):
            <asp:TextBox ID="Weight" runat="server"></asp:TextBox>
        </p>
        <p>
            Average Daily Calorie Intake:
            <asp:TextBox ID="CalorieIntake" runat="server"></asp:TextBox>
        </p>
        <p>
            What is your goals? <asp:DropDownList ID="Goals" runat="server">
                <asp:ListItem Value="GainWeight">Gain Weight</asp:ListItem>
                <asp:ListItem Value="LoseWeight">Lose Weight</asp:ListItem>
                <asp:ListItem Value="BuildMuscle">Build Muscle</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            For Security Reasons Please Re-Enter Email
            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Create" />
        <p>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl="~/gym-logo.jpg" />
        </p>
    </form>
</body>
</html>
