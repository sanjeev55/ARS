%{--
<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 12/3/2017
  Time: 5:36 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<table border="1">
    <tr>
        <th>User ID</th>
        <th>User Name</th>
        <th>Flight Number</th>
        <th>Source</th>
        <th>Destination</th>
        <th>Date</th>
        <th>TOD</th>
        <th>TOA</th>
        <th>Total Seats</th>
        <th>Price</th>
        <th>Cancel</th>
    </tr>
    <tr>
        <g:each in="${f}" var="i">
            <td>${i.userId}</td>
            <td>${i.userName}</td>
            <td>${i.flightNo}</td>
            <td>${i.source}</td>
            <td>${i.destination}</td>
            <td>${i.date}</td>
            <td>${i.timeOfDeparture}</td>
            <td>${i.timeOfArrival}</td>
            <td>${i.totalSeats}</td>
            <td>${i.price}</td>
            <td><g:link controller="bookedFlight" action="cancelFlight" id="${i.id}">Cancel</g:link></td>
        </g:each>
    </tr>
</table>
<g:link controller="user" action="backDashboard">
    <button>Home</button>
</g:link>
</body>
</html>--}%

<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <title>My Bookings</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'styleTable.css')}" type="text/css">
    %{-- <link rel="stylesheet" href="css/style.css">--}%
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <g:javascript  src="indexTable.js"></g:javascript>

    <script src="https://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'styleButton.css')}" type="text/css">


</head>

<body style="background-image:url('${resource(dir: "images", file: "intro-bg.jpg")}')">
<section>
    <!--for demo wrap-->
    <h1>Your Bookings</h1>
    <div class="tbl-header">
        <table cellpadding="0" cellspacing="0" border="0">
            <thead>
            <tr>

                <th>User Name</th>
                <th>Flight Number</th>
                <th>Source</th>
                <th>Destination</th>
                <th>Date</th>
                <th>TOD</th>
                <th>TOA</th>
                <th>Total Seats</th>
                <th>Price</th>
                <th>Cancel</th>
            </tr>
            </thead>
        </table>
    </div>
    <div class="tbl-content">
        <table cellpadding="0" cellspacing="0" border="0">
            <tbody>
            <g:each in="${f}" var="i">
            <tr>
                    <td>${i.userName}</td>
                    <td>${i.flightNo}</td>
                    <td>${i.source}</td>
                    <td>${i.destination}</td>
                    <td>${i.date}</td>
                    <td>${i.timeOfDeparture}</td>
                    <td>${i.timeOfArrival}</td>
                    <td>${i.totalSeats}</td>
                    <td>${i.price}</td>
                    <td><g:link controller="bookedFlight" action="cancelFlight" id="${i.id}">Cancel</g:link></td>

            </tr>
            </g:each>
            </tbody>
        </table>

    </div>
    <g:link controller="user" action="backDashboard">
        <section>
            <button id="js-trigger-overlay" type="button" class="t">Home</button>
        </section>
    </g:link>
</section>
</body>
</html>
