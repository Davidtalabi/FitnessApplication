<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BootStrapProfileDashboard.aspx.cs" Inherits="WebApplication4.WebForm3" %>

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
<title>Create An Account</title>
   <!--Made with love by Mutiullah Samim -->
   
<!--Bootsrap 4 CDN-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
   
    <!--Fontawesome CDN-->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

<!--Custom styles-->
<link rel="stylesheet" type="text/css" href="profileDashboard.css">
</head>
<body>
   
    <form id="form1" runat="server">
   
<title>Profile</title>

<meta charset="utf-8" >   
<meta name ="viewpoint" content="width=device-width, initial-scale=1, shrink=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<!--Bootsrap CSS -->
<link rel="stylesheet" href="<link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">

<!--!custom css-->
<link rel="stylesheet" type="text/css" href="../css/myStyle.css" />

</head>
<body>
     <!--navbar-->
     <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
  <a class="navbar-brand col-md-3 col-lg-2 mr-0 px-3" href="#">FitnessApp</a>
  <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-toggle="collapse" data-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <!-- Search Bar <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
  <ul class="navbar-nav px-3">
    <li class="nav-item text-nowrap">
      <a class="nav-link" href="#">Sign out</a>
    </li> -->
  </ul>
</nav>

<div class="container-fluid">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
      <div class="sidebar-sticky pt-3">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link active" href="#">
              <span data-feather="home"></span>
              User Profile <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file"></span>
              Today's Workout
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="shopping-cart"></span>
              Create New Workout Plan
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="users"></span>
              Workouts for the week
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="bar-chart-2"></span>
              Sign Out
            </a>
          </li>
      </div>
    </nav>


    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">User Profile</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
          <div class="btn-group mr-2">
            <button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
            <button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
          </div>
          <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle">
            <span data-feather="calendar"></span>
            This week
          </button>
        </div>
      </div>

      
     <asp:Image ID="Fitnesslogo" runat="server" Height="214px" ImageUrl="~/gym-logo.jpg" Width="327px" />   
       
      <br />
       
      <h5>
          <asp:GridView ID="GridView1" runat="server">
          </asp:GridView>
          <script>
              document.write(getCookie("userName"));
          </script>

      </h5>
      <div class="table-responsive">
        <table class="table table-striped table-sm">
      
          <tbody>
            <tr>
              <td>Age</td>
              <td></td>
              <td>17</td>
              <td></td>
              <td></td>
            </tr>
               <tr>
              <td>Gender</td>
              <td></td>
              <td>Male</td>
              <td></td>
              <td></td>
            </tr>
            <tr>
              <td>Exercise Type</td>
              <td></td>
              <td>Lose Weight</td>
              <td></td>
              <td></td>
            </tr>
               <tr>
              <td>Height</td>
              <td></td>
              <td>6'6</td>
              <td></td>
              <td></td>
            </tr>
              <tr>
              <td>Weight</td>
              <td></td>
              <td>300</td>
              <td></td>
              <td></td>
            </tr>
             <tr>
              <td>Goal</td>
              <td></td>
              <td>180</td>
              <td></td>
              <td></td>
            </tr>
              <tr>
              <td>Calories</td>
              <td></td>
              <td>1000</td>
              <td></td>
              <td></td>
            </tr>
            <tr>
              <td>Phone Number</td>
              <td></td>
              <td>3232992929</td>
              <td></td>
              <td></td>
            </tr>
                <tr>
              <td>Email</td>
              <td></td>
              <td>who@yahoo.com</td>
              <td></td>
              <td></td>
            </tr>
            <tr>
              <td>Address</td>
              <td></td>
              <td>443535 greeb 65</td>
              <td></td>
              <td></td>
            </tr>



    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

        </form>

</body>
</html>
