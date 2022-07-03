%{--
<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 11/28/2017
  Time: 4:00 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body style="background-image:url('${resource(dir: "images", file: "rusty-plane_00442769.jpg")}')">
<g:form method="post" controller="flight" action="updateFlight">
    <input type="hidden" name="id" value="${f.id}">
    Flight Number:<input type="text" name="flightNo" value="${f.flightNo}"><br>
    Source:<input type="text" name="source" value="${f.source}"><br>
    Destination:<input type="text" name="destination" value="${f.destination}"><br>
    Date:<input type="date" name="date" value="${f.date}"><br>
    Time of Departure:<input type="time" name="timeOfDeparture" value="${f.timeOfDeparture}"><br>
    Time of Arrival:<input type="time" name="timeOfArrival" value="${f.timeOfArrival}"><br>
    Price:<input type="text" name="price" value="${f.price}"><br>
    Capacity:<input type="text" name="capacity" value="${f.capacity}"><br>
    Remaining Seats:<input type="text" name="remainingSeat" value="${f.remainingSeat}">

    <input type="submit" value="Update"><br>
</g:form>

</body>
</html>--}%

<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Update Flight</title>


    <link rel="stylesheet" href="${resource(dir: 'css', file: 'form-basic.css')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'demo.css')}">

</head>
<body style="background-image:url('${resource(dir: "images", file: "user_bg.jpg")}')">


<div class="main-content">

<!-- You only need this form and the form-basic.css -->

    <g:form class="form-basic" method="post" controller="flight" action="updateFlight" >
        <div class="form-title-row">
            <h1>Update Flight</h1>
        </div>

        <input type="hidden" name="id" value="${f.id}">
        <div class="form-row">
            <label>
                <span>Flight Number</span>
                <input type="text" name="flightNo" value="${f.flightNo}">
            </label>
        </div>

        <div class="form-row">
            <label>
                <span>Source</span>
                <input type="text" name="source" value="${f.source}">
            </label>
        </div>

        <div class="form-row">
            <label>
                <span>Destination</span>
                <input type="text" name="destination" value="${f.destination}">
            </label>
        </div>

        <div class="form-row">
            <label>
                <span>Date</span>
                <input type="date" name="date" value="${f.date}">
            </label>
        </div>

        <div class="form-row">
            <label>
                <span>Time Of Departure</span>
                <input type="time" name="timeOfDeparture" value="${f.timeOfDeparture}">
            </label>
        </div>

        <div class="form-row">
            <label>
                <span>Time Of Arrival</span>
                <input type="time" name="timeOfArrival" value="${f.timeOfArrival}">
            </label>
        </div>

        <div class="form-row">
            <label>
                <span>Price</span>
                <input type="text" name="price" value="${f.price}">
            </label>
        </div>
        <div class="form-row">
            <label>
                <span>Capacity</span>
                <input type="text" name="capacity"value="${f.capacity}">
            </label>
        </div>
        <div class="form-row">
            <label>
                <span>Remaining Seats</span>
                <input type="text" name="remainingSeat" value="${f.remainingSeat}">
            </label>
        </div>
        <div class="form-row">
            <button type="submit">Update</button>
        </div>

    </g:form>

</div>

</body>

</html>

