<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BootStrapCreateWorkoutPlan.aspx.cs" Inherits="WebApplication4.BootStrapCreateWorkoutPlan" %>

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
    <link rel="stylesheet" type="text/css" href="../css/Landing.css" />

</head>


<body style="background: black;" class="page-holder bg-cover">
    <div class="container">
        <div class="d-flex justify-content-center">
            <div class="card" style="width: 30rem; background: transparent;">
                <div class="card-header">
                    <h3 style="color: white;">Create A Workout Plan</h3>
                </div>
                <div class="card-body" style="color: white;">
                    <form id="form" runat="server">
                        <div class="form-group">
                            <asp:Label runat="server" ID="GenderLabel"
                                AssociatedControlID="Gender" Text="Gender" />
                            <asp:DropDownList runat="server" ID="Gender"
                                CssClass="form-control">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <asp:Label runat="server" ID="AgeLabel"
                                AssociatedControlID="Age" Text="Age" />
                            <asp:TextBox runat="server" ID="Age" TextMode="Number"
                                CssClass="form-control" placeholder="Please Enter Age..." />
                        </div>

                        <div class="form-group">
                            <asp:Label runat="server" ID="HeightLabel"
                                AssociatedControlID="Height" Text="Height" />
                            <asp:TextBox runat="server" ID="Height" TextMode="Number"
                                CssClass="form-control" placeholder="Please Enter Height In Inches..." />
                        </div>

                        <div class="form-group">
                            <asp:Label runat="server" ID="WeightLabel"
                                AssociatedControlID="Weight" Text="Weight" />
                            <asp:TextBox runat="server" ID="Weight" TextMode="Number"
                                CssClass="form-control" placeholder="Please Enter Weight In lbs..." />
                        </div>

                        <div class="form-group">
                            <asp:Label runat="server" ID="CalorieIntakeLabel"
                                AssociatedControlID="CalorieIntake" Text="Average Daily Calory Intake" />
                            <asp:TextBox runat="server" ID="CalorieIntake" TextMode="Number"
                                CssClass="form-control" placeholder="Please Enter Average Daily Calory Intake..." />
                        </div>

                        <div class="form-group">
                            <asp:Label runat="server" ID="GoalsLabel"
                                AssociatedControlID="Goals" Text="What is your goal?" />
                            <asp:DropDownList runat="server" ID="Goals"
                                CssClass="form-control">
                                <asp:ListItem Value="GainWeight">Gain Weight</asp:ListItem>
                                <asp:ListItem Value="LoseWeight">Lose Weight</asp:ListItem>
                                <asp:ListItem Value="BuildMuscle">Build Muscle</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <asp:Label runat="server" ID="EmailSecurityLabel"
                                AssociatedControlID="Email" Text="Confirm Email Address" />
                            <asp:TextBox runat="server" ID="Email" TextMode="Email"
                                CssClass="form-control" placeholder="Email Address..." />
                        </div>


                        <div class="row align-items-center remember">
                        </div>
                        <div class="form-group">
                            <input type="submit" value="Create" class="btn float-right btn-success login_btn" runat="server" onserverclick="Button1_Click">
                            <br />
                            <asp:Label ID="Label1" runat="server" Style="text-align: center"></asp:Label>
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

    <asp:Image ID="Logo" runat="server" ImageUrl="~/images/smart_fit_logo.png" class="dvd" Style="z-index: -1" />

</body>
</html>
