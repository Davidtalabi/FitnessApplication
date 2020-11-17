<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuildMuscle.aspx.cs" Inherits="WebApplication4.BuildMuscle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>View Workout Plan</title>
   <!--Made with love by Mutiullah Samim -->
   
<!--Bootsrap 4 CDN-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
   
    <!--Fontawesome CDN-->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

<!--Custom styles-->
<link rel="stylesheet" type="text/css" href="styles.css">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body style="background: url(https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/113738439/original/cfc81c244cca3ffab7c7b57c696eba5bac95e62d/design-sports-gym-and-fitness-logo.jpg); background-size: cover" class="page-holder bg-cover">
    <div class="container">
<div class="d-flex justify-content-center h-100">
<div class="card" style=" width: 60rem; margin-top: 200px;">
<div class="card-header">
<h3 class="auto-style1">Your Weekly Workout Plan</h3>
</div>
    <div class="card-body">
    <form id="form1" runat="server">
        <div>
        </div>
        <div class="form-group">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="table table-striped" GridLines="None">
        <Columns>
        <asp:TemplateField HeaderText="Monday (Chest Workouts)" HeaderStyle-CssClass="text-center">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# "data:Image/jpg;base64," + Convert.ToBase64String((byte [])Eval("Monday")) %>' Width="200px" />
            </ItemTemplate>
        </asp:TemplateField>
            <asp:TemplateField HeaderText="Tuesday(Shoulder Workouts)" HeaderStyle-CssClass="text-center">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# "data:Image/jpg;base64," + Convert.ToBase64String((byte [])Eval("Tuesday")) %>' Width="200px" />
            </ItemTemplate>
        </asp:TemplateField>
            <asp:TemplateField HeaderText="Thursday (Leg Workouts)" HeaderStyle-CssClass="text-center">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# "data:Image/jpg;base64," + Convert.ToBase64String((byte [])Eval("Thursday")) %>' Width="200px" />
            </ItemTemplate>
        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Friday (Ab Workouts)" HeaderStyle-CssClass="text-center">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# "data:Image/jpg;base64," + Convert.ToBase64String((byte [])Eval("Friday")) %>' Width="200px" />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
        </asp:GridView>
            </div>
    </form>
        </div>
    </div>
    </div>
        </div>
</body>
</html>
