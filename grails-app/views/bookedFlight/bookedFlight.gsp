%{--
<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 11/28/2017
  Time: 4:51 PM
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
        <th>TOA</th>
        <th>TOD</th>
        <th>Price</th>
    </tr>
    <g:each in="${b}" var="i">
        <tr>
            <th>${i.userId}</th>
            <th>${i.userName}</th>
            <th>${i.flightNo}</th>
            <th>${i.source}</th>
            <th>${i.destination}</th>
            <th>${i.date}</th>
            <th>${i.timeOfDeparture}</th>
            <th>${i.timeOfArrival}</th>
            <th>${i.price}</th>
        </tr>
    </g:each>
</table>

</body>
</html>--}%

<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <title>Booked Flight</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'styleTable.css')}" type="text/css">
    %{-- <link rel="stylesheet" href="css/style.css">--}%
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <g:javascript  src="indexTable.js"></g:javascript>

</head>

<body style="background-image:url('${resource(dir: "images", file: "intro-bg.jpg")}')">
<section>
    <!--for demo wrap-->
    <h1>Booked Flight</h1>
    <div class="tbl-header">
        <table cellpadding="0" cellspacing="0" border="0">
            <thead>
            <tr>
                <th>User ID</th>
                <th>User Name</th>
                <th>Flight Number</th>
                <th>Source</th>
                <th>Destination</th>
                <th>Date</th>
                <th>TOA</th>
                <th>TOD</th>
                <th>Total Seats</th>
                <th>Price</th>
            </tr>
            </thead>
        </table>
    </div>
    <div class="tbl-content">
        <table cellpadding="0" cellspacing="0" border="0">
            <tbody>
            <g:each in="${b}" var="i">
                <tr>
                    <th>${i.userId}</th>
                    <th>${i.userName}</th>
                    <th>${i.flightNo}</th>
                    <th>${i.source}</th>
                    <th>${i.destination}</th>
                    <th>${i.date}</th>
                    <th>${i.timeOfDeparture}</th>
                    <th>${i.timeOfArrival}</th>
                    <th>${i.totalSeats}</th>
                    <th>${i.price}</th>
                </tr>
            </g:each>
            </tbody>
        </table>
    </div>
</section>
</body>
</html>
