%{--<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 11/27/2017
  Time: 4:59 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:if test="${u.role=='admin'}">
<g:link controller="flight" action="addFlight">
    <button>Add Flight</button>
</g:link><br>
</g:if>

<table border="1">
    <tr>
        <th>Flight Number</th>
        <th>Source</th>
        <th>Destination</th>
        <th>Date</th>
        <th>TOD</th>
        <th>TOA</th>
        <th>Price</th>
        <th>Capacity</th>
        <th>Remaining Seats</th>
        <g:if test="${u.role=='admin'}">
        <th>Edit</th>
        <th>Delete</th>
        </g:if>
    </tr>
    
    <g:each in="${f}" var="i">
        <tr>
            <th><g:link controller="bookedFlight" action="bookFlight" id="${i.id}">${i.flightNo}</g:link></th>
            <th>${i.source}</th>
            <th>${i.destination}</th>
            <th>${i.date}</th>
            <th>${i.timeOfDeparture}</th>
            <th>${i.timeOfArrival}</th>
            <th>${i.price}</th>
            <th>${i.capacity}</th>
            <th>${i.remainingSeat}</th>
            <g:if test="${u.role=='admin'}">
            <th><g:link controller="flight" action="editFlight" id="${i.id}"> Edit</g:link></th>
            <th><g:link controller="flight" action="deleteFlight" id="${i.id}"> Delete</g:link></th>
            </g:if>
        </tr>

    </g:each>
</table>
</body>
</html>--}%

<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <title>Flights</title>

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
    <h1>Flight List</h1>
    <div class="tbl-header">
        <table cellpadding="0" cellspacing="0" border="0">
            <thead>

            <tr>
                <th>Flight Number</th>
                <th>Source</th>
                <th>Destination</th>
                <th>Date</th>
                <th>TOD</th>
                <th>TOA</th>
                <th>Price</th>
                <th>Capacity</th>
                <th>Remaining Seats</th>
                <g:if test="${u.role=='admin'}">
                    <th>Edit</th>
                    <th>Delete</th>
                </g:if>
            </tr>

            </thead>
        </table>
    </div>
    <div class="tbl-content">
        <table cellpadding="0" cellspacing="0" border="0">
            <tbody>
            <g:each in="${f}" var="i">
                <tr>
                    <g:if test="${u.role=='user'}">
                    <th><g:link controller="bookedFlight" action="bookFlight" id="${i.id}">${i.flightNo}</g:link></th>
                </g:if>
                    <g:if test="${u.role=='admin'}"><th>${i.flightNo}</th>
                    </g:if>
                    <th>${i.source}</th>
                    <th>${i.destination}</th>
                    <th>${i.date}</th>
                    <th>${i.timeOfDeparture}</th>
                    <th>${i.timeOfArrival}</th>
                    <th>${i.price}</th>
                    <th>${i.capacity}</th>
                    <th>${i.remainingSeat}</th>
                    <g:if test="${u.role=='admin'}">
                        <th><g:link controller="flight" action="editFlight" id="${i.id}"> Edit</g:link></th>
                        <th><g:link controller="flight" action="deleteFlight" id="${i.flightNo}"> Delete</g:link></th>
                    </g:if>
                </tr>

            </g:each>
            </tbody>
        </table>

    </div>

    <g:if test="${u.role=='admin'}">
        <g:link controller="flight" action="addFlight">
            <section>
                <button id="js-trigger-overlay" type="button">Add Flight</button>
            </section>
        </g:link>
    </g:if>
    <g:link controller="user" action="backDashboard">
        <section>
            <button id="js-trigger-overlay1" type="button">Home</button>
        </section>
    </g:link>

</section>
</body>
</html>



