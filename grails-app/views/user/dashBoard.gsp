%{--
<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 11/27/2017
  Time: 10:17 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:if test="${u.role=='admin'}">
<g:link controller="flight" action="viewFlight">
    <button>View Flight</button>
</g:link>

    <g:link controller="flight" action="addFlight">
        <button>Add Flight</button>
    </g:link>

    <g:link controller="flight" action="searchFlight">
        <input type="hidden" name="role" value="admin">
        <button>Search Flight</button>
    </g:link>

    <g:link controller="bookedFlight" action="viewBookedFlight">
        <button>View Booked Flight</button>
    </g:link>

    <g:link controller="user" action="viewUser">
        <button>View Users</button>
    </g:link>

    <g:link controller="user" action="logOut">
        <button>LogOut</button>
    </g:link>
</g:if>

<g:if test="${u.role=='user'}">

    <g:link controller="flight" action="searchFlight">
        <input type="hidden" name="role" value="user">
        <button>Search Flight</button>
    </g:link>
    <g:link controller="flight" action="viewMyBooking">
        <button>View My Booking</button>
    </g:link>
    <g:link controller="user" action="logOut">
        <button>Log Out</button>
    </g:link>

</g:if>
</body>
</html>--}%

%{--
<!doctype html>
<html lang=''>
<head>
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    --}%
%{-- <link rel="stylesheet" href="css/stylesMenu.css">--}%%{--

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'stylesMenu.css')}">
    <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
    <g:javascript src="scriptMenu.js"></g:javascript>

    <r:layoutResources/>
    <title>Menu</title>
</head>
<body background="/images/user_bg.jpg">

<div id='cssmenu' >
    <ul>
        <g:if test="${u.role=='admin'}">

            <li> <g:link controller="flight" action="viewFlight">
                View Flight
            </g:link></li>

            <li>  <g:link controller="flight" action="addFlight">
                Add Flight
            </g:link></li>

            <li>
                <g:link controller="flight" action="searchFlight">
                    Search Flight
                </g:link>
            </li>
            <li> <g:link controller="bookedFlight" action="viewBookedFlight">
                View Booked Flight
            </g:link></li>
            <li> <g:link controller="user" action="viewUser">
                View Users
            </g:link></li>
            <li><g:link controller="user" action="logOut" style="text-align: right">
                Log Out
            </g:link></li>
            <li><g:link controller="user" action="info">
                Welcome ${u.name}
            </g:link></li>
        </g:if>
        <g:if test="${u.role=='user'}">

            <li><g:link controller="flight" action="searchFlight">
                Search Flight
            </g:link></li>
            <li><g:link controller="bookedFlight" action="viewMyBooking">
                View My Booking
            </g:link></li>
            <li><g:link controller="user" action="logOut">
                Log Out
            </g:link></li>
            <li><g:link controller="user" action="info">
                Welcome ${u.name}
            </g:link></li>

        </g:if>

    </ul>
</div>

</body>
<html>
--}%

<!DOCTYPE html>
<html lang="en">

<link>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>ARS</title>
%{--
    <!-- Bootstrap core CSS -->
    --}%%{--<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">--}%%{--
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'font-awesome.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'grayscale.min.css')}" type="text/css">


    <!-- Custom fonts for this template -->
   --}%%{-- <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">--}%%{--
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Cabin:700' rel='stylesheet' type='text/css'>

    --}%%{--<!-- Custom styles for this template -->--}%%{--
    --}%%{--<link href="css/grayscale.min.css" rel="stylesheet">--}%%{--

    <r:layoutResources/>--}%

<!-- Bootstrap core CSS -->
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Cabin:700' rel='stylesheet' type='text/css'>

<!-- Custom styles for this template -->
<link href="../css/grayscale.min.css" rel="stylesheet">

</head>

<body id="page-top">

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">Home</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                aria-label="Toggle navigation">
            Menu
            <i class="fa fa-bars"></i>
        </button>

        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <g:if test="${u.role == 'admin'}">
                    <li class="nav-item">
                        <g:link controller="flight" action="viewFlight"
                                class="nav-link js-scroll-trigger">View Flight</g:link>
                    </li>
                    <li class="nav-item">
                        <g:link controller="flight" action="addFlight"
                                class="nav-link js-scroll-trigger">Add Flight</g:link>
                    </li>
                    <li class="nav-item">
                        <g:link controller="flight" action="searchFlight"
                                class="nav-link js-scroll-trigger">Search Flight</g:link>
                    </li>
                    <li class="nav-item">
                        <g:link controller="bookedFlight" action="viewBookedFlight"
                                class="nav-link js-scroll-trigger">View Booked Flight</g:link>
                    </li>
                    <li class="nav-item">
                        <g:link controller="user" action="viewUser"
                                class="nav-link js-scroll-trigger">View User</g:link>
                    </li>
                    <li class="nav-item">
                        <g:link controller="user" action="logOut" class="nav-link js-scroll-trigger">Log Out</g:link>
                    </li>
                    <li class="nav-item">
                        <g:link controller="user" action="info"
                                class="nav-link js-scroll-trigger">Welcome ${u.name}</g:link>
                    </li>
                </g:if>
                <g:if test="${u.role == 'user'}">
                    <li class="nav-item">
                        <g:link controller="flight" action="searchFlight"
                                class="nav-link js-scroll-trigger">Search Flight</g:link>
                    </li>
                    <li class="nav-item">
                        <g:link controller="bookedFlight" action="viewMyBooking"
                                class="nav-link js-scroll-trigger">View My Booking</g:link>
                    </li>
                    <li class="nav-item">
                        <g:link controller="user" action="logOut" class="nav-link js-scroll-trigger">Log Out</g:link>
                    </li>
                    <li class="nav-item">
                        <g:link controller="user" action="info"
                                class="nav-link js-scroll-trigger">Welcome ${u.name}</g:link>
                    </li>
                </g:if>
            </ul>
        </div>
    </div>
</nav>

<!-- Intro Header -->
<header class="masthead" style="background-image:url('${resource(dir: "images", file: "Airplane-sunset.jpg")}')">
    <div class="intro-body">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 mx-auto">
                    <h1 class="brand-heading">Hamro Airlines</h1>

                    <p class="intro-text">Book Your Flight Easily and Efficiently
                    </p>
                    <a href="#about" class="btn btn-circle js-scroll-trigger">
                        <i class="fa fa-angle-double-down animated"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- About Section -->
<section id="about" class="content-section text-center"
         style="background-image:url('${resource(dir: "images", file: "airplane1.jpg")}')">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 mx-auto">
                <h2>About Hamro Airlines</h2>

                <p>Hamro Airlines is a web application that allows you to book your flight ticket easily and efficiently.</p>

                <p>Hamro Airlines is developed using Grails Framework.</p>

                <p>This project is completed under the Supervision of our respected Teacher Mr. Anil Shrestha.</p>
            </div>
        </div>
    </div>
</section>



<!-- Contact Section -->
<section id="contact" class="content-section text-center"
         style="background-image:url('${resource(dir: "images", file: "maxresdefault.jpg")}')">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 mx-auto">
                <h2>Contact Us</h2>

                <p>Feel free to contact me at s.shakya55@gmail.com

                </p>
                <ul class="list-inline banner-social-buttons">
                    <li class="list-inline-item">
                        <a href="https://twitter.com" target="_blank" class="btn btn-default btn-lg">
                            <i class="fa fa-twitter fa-fw"></i>
                            <span class="network-name">Twitter</span>
                        </a>
                    </li>
                    <li class="list-inline-item">
                        <a href="https://github.com" target="_blank" class="btn btn-default btn-lg">
                            <i class="fa fa-github fa-fw"></i>
                            <span class="network-name">Github</span>
                        </a>
                    </li>
                    <li class="list-inline-item">
                        <a href="https://plus.google.com" target="_blank" class="btn btn-default btn-lg">
                            <i class="fa fa-google-plus fa-fw"></i>
                            <span class="network-name">Google+</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>


%{--
<!-- Bootstrap core JavaScript -->
<g:javascript src="jquery.min.js"></g:javascript>
<g:javascript src="bootstrap.bundle.min.js"></g:javascript>

<!-- Plugin JavaScript -->
<g:javascript src="jquery.easing.min.js"></g:javascript>

<!-- Google Maps API Key - Use your own API key to enable the map feature. More information on the Google Maps API can be found at https://developers.google.com/maps/ -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRngKslUGJTlibkQ3FkfTxj3Xss1UlZDA&sensor=false"></script>

<!-- Custom scripts for this template -->
<g:javascript src="grayscale.min.js"></g:javascript>
<r:layoutResources/>--}%

<!-- Bootstrap core JavaScript -->
<script src="../vendor/jquery/jquery.min.js"></script>
<script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Plugin JavaScript -->
<script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Google Maps API Key - Use your own API key to enable the map feature. More information on the Google Maps API can be found at https://developers.google.com/maps/ -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRngKslUGJTlibkQ3FkfTxj3Xss1UlZDA&sensor=false"></script>

<!-- Custom scripts for this template -->
<script src="../js/grayscale.min.js"></script>
</body>

</html>




