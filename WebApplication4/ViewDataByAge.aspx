<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewDataByAge.aspx.cs" Inherits="WebApplication4.ViewDataByAge" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Application Usage By Age</title>
    <link href="css/Bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="../css/Landing.css" />

</head>
<body style="background: black;" class="page-holder bg-cover">
    <div class="container">
        <div class="d-flex justify-content-center h-100">
            <div class="card" style="width: 35rem; margin-top: 5%;">
                <div class="card-header">
                    <h3 style="text-align: center">Application Usage By Age</h3>
                </div>
                <div class="card-body">
                    <form id="form1" runat="server">
                        <div>
                        </div>
                        <div class="form-group" >
                            <asp:DropDownList ID="DropDownList1" AutoPostBack="true" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            </asp:DropDownList>
                            <br />
                            <asp:Chart ID="Chart1" style="background: transparent;" runat="server" Height="500px" Width="500px" Palette="None">
                                <Titles>
                                    <asp:Title Text="Application Usage By Age"></asp:Title>
                                </Titles>
                                <Series>
                                    <asp:Series Name="Series1" ChartArea="ChartArea1" ChartType="Pie">
                                    </asp:Series>
                                </Series>
                                <ChartAreas>
                                    <asp:ChartArea Name="ChartArea1">
                                        <AxisX Title="Goal"></AxisX>
                                        <AxisY Title="# Of Users"></AxisY>
                                        <Area3DStyle Enable3D="true" />
                                    </asp:ChartArea>
                                </ChartAreas>
                            </asp:Chart>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <asp:Image ID="Logo" runat="server" ImageUrl="~/images/smart_fit_logo.png" class="dvd" Style="z-index: -1" />

</body>
<%--<body style="color: #FFFFFF">
    <form id="form1" runat="server">
        <div style="text-align: center; background: url(https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/113738439/original/cfc81c244cca3ffab7c7b57c696eba5bac95e62d/design-sports-gym-and-fitness-logo.jpg); background-size: cover">
            <h3>Application Usage By Age</h3>
            <br />
            <asp:DropDownList ID="DropDownList1" AutoPostBack="true" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
            <asp:Chart ID="Chart1" runat="server" Height="500px" Width="500px" Palette="None">
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
    </form>
</body>--%>
</html>
