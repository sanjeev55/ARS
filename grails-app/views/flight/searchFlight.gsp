%{--
<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 11/29/2017
  Time: 7:31 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<p>Search Flight by:</p>
<g:if test="${r=='admin'}">
<g:link controller="flight" action="searchByFlightNo">
    <button>Search By Flight Number</button>
</g:link>
<g:link controller="flight" action="searchBySource">
    <button>Search by Source</button>
</g:link>
</g:if>
<g:link controller="flight" action="searchBySourceAndDestination">
    <button>Search by Source and Destination</button>
</g:link>
<g:link controller="flight" action="searchBySourceDateAndDestination">
    <button>Search by Source Date and Destination</button>
</g:link>


</body>
</html>--}%




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
        <g:link controller="user" action="backDashboard" class="navbar-brand js-scroll-trigger" href="#page-top">Home</g:link>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                aria-label="Toggle navigation">
            Menu
            <i class="fa fa-bars"></i>
        </button>

        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <g:if test="${r=='admin'}">
                    <li class="nav-item">
                        <g:link controller="flight" action="searchByFlightNo"
                                class="nav-link js-scroll-trigger">Search By Flight Number</g:link>

                    </li>
                    <li class="nav-item">
                        <g:link controller="flight" action="searchBySource"
                                class="nav-link js-scroll-trigger">Search By Source</g:link>
                    </li>
                </g:if>
                <li class="nav-item">
                    <g:link controller="flight" action="searchBySourceAndDestination"
                            class="nav-link js-scroll-trigger">Search By Source and Destination </g:link>
                </li>
                <li class="nav-item">
                    <g:link controller="flight" action="searchBySourceDateAndDestination"
                            class="nav-link js-scroll-trigger">Search By Source Data and Destination</g:link>
                </li>


            </ul>
        </div>
    </div>
</nav>

<!-- Intro Header -->
<header class="masthead" style="background-image:url('${resource(dir: "images", file: "aeroplane1.jpg")}');opacity: 0.5">
    <div class="intro-body">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 mx-auto">
                    <h1 class="brand-heading" style="color: #721c24">Hamro Airlines</h1>

                    <p class="intro-text">Search Flights According To Your Necessity.
                    </p>


                   %{-- <a href="#about" class="btn btn-circle js-scroll-trigger">
                        <i class="fa fa-angle-double-down animated"></i>
                    </a>--}%
                </div>
            </div>
        </div>
    </div>
</header>

<!-- About Section -->






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





