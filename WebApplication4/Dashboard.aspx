<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="WebApplication4.Dashboard" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script>
        function getCookie(cname) {
            var name = cname + "=";
            var decodedCookie = decodeURIComponent(document.cookie);
            var ca = decodedCookie.split(';');
            for (var i = 0; i < ca.length; i++) {
                var c = ca[i];
                while (c.charAt(0) == ' ') {
                    c = c.substring(1);
                }
                if (c.indexOf(name) == 0) {
                    return c.substring(name.length, c.length);
                }
            }
            return "";
        }
    </script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <title>Dashboard</title>
    <!--Made with love by Mutiullah Samim -->

    <!--Bootsrap 4 CDN-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!--Fontawesome CDN-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

    <!--Custom styles-->
    <link rel="stylesheet" type="text/css" href="../css/profileDashboard.css">
    <style>
        .productList {
            border: 1px solid #6c757d;
            margin-bottom: 10px;
            padding: 15px;
            border-radius: 3px;
        }

        .sidebar {
            height: 100%;
            width: 0;
            /*position: fixed;*/
            z-index: 1;
            top: 0;
            left: 0;
            background-color: #111;
            overflow-x: hidden;
            transition: 0.5s;
            padding-top: 60px;
        }

            .sidebar a {
                /*padding: 8px 8px 8px 32px;*/
                justify-content: right;
                text-decoration: none;
                font-size: 10px;
                color: #818181;
                display: inline-block;
                transition: 0.3s;
            }

                .sidebar a:hover {
                    color: #f1f1f1;
                }

            .sidebar .closebtn {
                position: absolute;
                top: 0;
                right: 25px;
                font-size: 36px;
                margin-left: 50px;
            }

        .openbtn {
            font-size: 20px;
            cursor: pointer;
            background-color: #111;
            color: white;
            padding: 10px 15px;
            border: none;
        }

            .openbtn:hover {
                background-color: #444;
            }

        #main {
            transition: margin-left .5s;
            padding: 16px;
        }

        /* On smaller screens, where height is less than 450px, change the style of the sidenav (less padding and a smaller font size) */
        @media screen and (max-height: 450px) {
            .sidebar {
                padding-top: 15px;
            }

                .sidebar a {
                    font-size: 18px;
                }
        }
    </style>
    <link rel="stylesheet" type="text/css" href="../css/Landing.css" />

</head>

<body style="background: black;">


    <div id="main">
        <button class="openbtn" onclick="openNav()">☰</button>
    </div>

    <form id="form1" runat="server" style="color: white;">
        <nav class="navbar sticky-top flex-md-nowrap p-0" style="background: black;">
            <%--<a class="navbar-brand bg-dark col-md-3 col-lg-2 mr-0 px-3" href="#">
                <asp:Image ID="Image1" class="collapsible" runat="server" ImageUrl="~/images/smart_fit_logo.png" Style="z-index: -1; height: 25%; width: 15%;" />
            </a>--%>
        </nav>
        <div class="container-fluid">
            <div class="row">
                <%--<nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block sidebar collapse">
                    <div class="sidebar-sticky pt-3" style="text-align: center">
                        <ul class="nav flex-column">
                            <li class="nav-item">--%>
                <div id="mySidebar" class="sidebar">
                    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
                    <ul style="list-style-type: none;">
                        <li>
                            <a>
                                <asp:LinkButton ID="LinkButton1" class="btn btn-outline-dark" Style="text-decoration: none; color: white; padding: 5%;" runat="server">View Workout Plan</asp:LinkButton>
                            </a>

                            <br />
                            <br />
                            <a>
                                <asp:LinkButton ID="LinkButton4" class="btn btn-outline-dark" Style="text-decoration: none; color: white; padding: 5%;" runat="server" PostBackUrl="https://localhost:44356/ViewUserChartDataV2.aspx">View User Stats By Gender</asp:LinkButton>
                            </a>
                            <br />
                            <br />

                            <a>
                                <asp:LinkButton ID="LinkButton5" class="btn btn-outline-dark" Style="text-decoration: none; color: white; padding: 5%;" runat="server" PostBackUrl="https://localhost:44356/viewdatabyage.aspx">View User Stats By Age</asp:LinkButton>
                            </a>
                        </li>
                        <li>
                            <a>
                                <asp:LinkButton ID="LinkButton2" class="btn btn-outline-dark" Style="text-decoration: none; color: white;" runat="server" PostBackUrl="https://localhost:44356/ViewUserChartDataV2.aspx">View User Stats By Gender</asp:LinkButton>
                            </a>
                        </li>
                        <li>
                            <a>
                                <asp:LinkButton ID="LinkButton3" class="btn btn-outline-dark" Style="text-decoration: none; color: white;" runat="server" PostBackUrl="https://localhost:44356/viewdatabyage.aspx">View User Stats By Age</asp:LinkButton>
                            </a>
                        </li>
                    </ul>
                </div>

                <main role="main" class=" ml-sm-auto col-lg-12">
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                        <h1 class="h2">User Profile</h1>
                        <div class="btn-toolbar mb-2 mb-md-0">
                        </div>
                    </div>
                    <asp:Image ID="Logo" runat="server" ImageUrl="~/images/smart_fit_logo.png" Style="z-index: -1; height: 25%; width: 15%; position: relative; left: 43%;" />


                    <div class="container py-4">

                        <asp:FormView CssClass="container" ID="FormView1" AllowPaging="False" runat="server">
                            <ItemTemplate>
                                <table class="table table-striped table-lg table-bordered">
                                    <h5 class="text-center">Welcome to Smart Fit <%#Eval("Username") %></h5>
                                    <br />
                                    <tr>

                                        <td>Username</td>
                                        <td><%#Eval("Username") %></td>

                                    </tr>
                                    <tr>

                                        <td>Age</td>
                                        <td><%#Eval("Age") %> Years Old</td>
                                    </tr>
                                    <tr>

                                        <td>Gender</td>
                                        <td><%#Eval("Gender") %></td>
                                    </tr>
                                    <tr>

                                        <td>Height</td>
                                        <td><%#Eval("Height") %> Inches</td>
                                    </tr>
                                    <tr>

                                        <td>Weight</td>
                                        <td><%#Eval("Weight") %> Lbs</td>
                                    </tr>
                                    <tr>

                                        <td>Daily Calorie Intake</td>
                                        <td><%#Eval("Calories") %> Calories</td>
                                    </tr>
                                    <tr>

                                        <td>Goals</td>
                                        <td><%#Eval("Goals") %></td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:FormView>
                    </div>
                </main>

                <%--<asp:DataList ID="DataList1" runat="server" CssClass="row">  
                <ItemTemplate>  
<div class="row productList">  
                        <div class="col-4">  
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/gym-logo.jpg" width="130px" Height="200px"/>  
                        </div>  
                        <div class="col-8">  
                            <h5>Welcome to Smart Fit <%#Eval("Username")%></h5>  
                            <h6>Age: <%#Eval("Age")%> Years Old</h6>
                            <h6>Gender: <%#Eval("Gender")%></h6> 
                            <h6>Height: <%#Eval("Height")%> Inches</h6> 
                            <h6>Weight: <%#Eval("Weight")%> Lbs</h6> 
                            <h6>Your Daily Calorie Intake Is: <%#Eval("Calories")%></h6> 
                            <h6>Your Goal is to: <%#Eval("Goals")%></h6> 
                        </div>  
                    </div>  
                </ItemTemplate>  
            </asp:DataList>  --%>
                <%--                      <script>
                          document.write(getCookie("userName"));
                      </script>--%>
            </div>
        </div>
    </form>

    <script>
        function openNav() {
            document.getElementById("mySidebar").style.width = "200px";
            document.getElementById("main").style.marginLeft = "50px";
        }

        function closeNav() {
            document.getElementById("mySidebar").style.width = "0";
            document.getElementById("main").style.marginLeft = "0";
        }
    </script>
    <%--  <asp:Image ID="Logo" runat="server" ImageUrl="~/images/smart_fit_logo.png" class="dvd" Style="z-index: -1" />--%>
</body>
</html>
