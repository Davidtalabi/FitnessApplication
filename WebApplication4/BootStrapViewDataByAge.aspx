<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BootStrapViewDataByAge.aspx.cs" Inherits="WebApplication4.BootStrapViewDataByAge" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>
<html>
<head>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Create Workout Plan</title>
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
<div class="card" style=" width: 20rem; margin-top: 200px;">
<div class="card-header">
<h3>Application usage by age</h3>
</div>
<div class="card-body">
<form id="form" runat="server">
    <div class="form-group">
            <asp:DropDownList ID="DropDownList1" AutoPostBack="true" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                CssClass="form-control" >
            </asp:DropDownList>
        </div>
    
    <div class="col-md-4">
                <asp:Chart ID="Chart1" runat="server" Height="500px" Width="500px" Palette="Excel">
                <Titles>
                    <asp:Title Text="Application Usage By Age"></asp:Title>
                </Titles>
                <series>
                    <asp:Series Name="Series1" ChartArea="ChartArea1" ChartType="Pie">
                    </asp:Series>
                </series>
                <chartareas>
                    <asp:ChartArea Name="ChartArea1">
                        <AxisX Title="Goal"></AxisX>
                        <AxisY Title="# Of Users"></AxisY>
                        <Area3DStyle Enable3D="true"/>
                    </asp:ChartArea>
                </chartareas>
            </asp:Chart>
        </div>




<div class="row align-items-center remember">
</div>
</form>
                <div class="d-flex justify-content-center links">
                </div>
                <div class="d-flex justify-content-center">
                </div>
</div>
</div>
</div>
</div>
</body>
</html>