<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewUserChartDataV2.aspx.cs" Inherits="WebApplication4.ViewUserChartDataV2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Application Stats By Gender</title>
    <link href="css/Bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="../css/Landing.css" />

</head>

<body style="background: black;" class="page-holder bg-cover">
    <div class="container">
        <div class="d-flex justify-content-center h-100">
            <div class="card" style="width: 45rem; margin-top: 5%;">
                <div class="card-header">
                    <h3 style="text-align: center">User Stats By Gender</h3>
                </div>
                <div class="card-body">
                    <form id="form1" runat="server">
                        <div>
                        </div>
                        <div class="form-group">
                            <span class="text-white">User Stats By Gender</span><br />
                            <asp:DropDownList ID="Gender" runat="server" OnSelectedIndexChanged="Gender_SelectedIndexChanged"
                                AutoPostBack="true">
                            </asp:DropDownList>
                            <hr />
                            <asp:Chart ID="Chart1" runat="server" Height="400px" Width="400px" Visible="false" Palette="None">
                                <Titles>
                                    <asp:Title Text="Application Usage By Gender" Name="Items" />
                                </Titles>
                                <Legends>
                                    <asp:Legend Alignment="Center" Docking="Bottom" IsTextAutoFit="False" Name="Default" LegendStyle="Row" />
                                </Legends>
                                <Series>
                                    <asp:Series Name="Default" />
                                </Series>
                                <ChartAreas>
                                    <asp:ChartArea Name="ChartArea1" BorderWidth="0" />
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
<%--<body style="text-align: center">
    <form id="form1" runat="server">
        <div style="text-align: center; background: url(https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/113738439/original/cfc81c244cca3ffab7c7b57c696eba5bac95e62d/design-sports-gym-and-fitness-logo.jpg); background-size: cover">
            <h3>
                <span class="text-white">User Stats By Gender</span><br />
            <asp:DropDownList ID="Gender" runat="server" OnSelectedIndexChanged="Gender_SelectedIndexChanged"
    AutoPostBack = "true">
</asp:DropDownList></h3>
            <hr />
<asp:Chart ID="Chart1" runat="server" Height="600px" Width="600px" Visible = "false" Palette="None">
    <Titles>
        <asp:Title Text="Application Usage By Gender" Name="Items" />
    </Titles>
    <Legends>
        <asp:Legend Alignment="Center" Docking="Bottom" IsTextAutoFit="False" Name="Default" LegendStyle="Row" />
    </Legends>
    <Series>
        <asp:Series Name="Default" />
    </Series>
    <ChartAreas>
        <asp:ChartArea Name="ChartArea1" BorderWidth="0" />
    </ChartAreas>
</asp:Chart>
        </div>
    </form>
</body>--%>
</html>
