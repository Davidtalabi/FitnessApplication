<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewUserChartData.aspx.cs" Inherits="WebApplication4.ViewUserChartData" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            View User Data<br />
            <br />
            <asp:DropDownList ID="DropDownList1" AutoPostBack="true" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
            <asp:Chart ID="Chart1" runat="server" Height="500px" Width="500px">
                <Titles>
                    <asp:Title Text="User Goals"></asp:Title>
                </Titles>
                <series>
                    <asp:Series Name="Series1" ChartArea="ChartArea1" ChartType="Pie">
                    </asp:Series>
                </series>
                <chartareas>
                    <asp:ChartArea Name="ChartArea1">
                        <AxisX Title="Goal"></AxisX>
                        <AxisY Title="# Of Users"></AxisY>
                    </asp:ChartArea>
                </chartareas>
            </asp:Chart>
        </div>
    </form>
</body>
</html>
