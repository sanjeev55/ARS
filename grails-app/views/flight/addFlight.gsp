%{--
<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 11/27/2017
  Time: 4:09 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body style="background-image:url('${resource(dir: "images", file: "user_bg.jpg")}')">
<g:form controller="flight" method="post" action="add">
    Flight Number:<input type="text" name="flightNo" placeholder="Enter Flight Number"><br>
    Source:<input type="text" name="source" placeholder="Enter Source"><br>
    Destination:<input type="text" name="destination" placeholder="Enter Destination"><br>
    Date:<input type="date" name="date" placeholder="Enter Date"><br>
    Time of Departure:<input type="time" name="timeOfDeparture" placeholder="Enter the TOD"><br>
    Time of Arrival:<input type="time" name="timeOfArrival" placeholder="Enter the TOA"><br>
    Price:<input type="text" name="price" placeholder="Enter the price"><br>
    Capacity:<input type="text" name="capacity" placeholder="Enter the Capacity"><br>

    <input type="submit" value="Add"><br>
</g:form>

</body>
</html>--}%
<!DOCTYPE html>
<html>

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Add Flight</title>


	<link rel="stylesheet" href="${resource(dir: 'css', file: 'form-basic.css')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'demo.css')}">

</head>
<body style="background-image:url('${resource(dir: "images", file: "user_bg.jpg")}')">


    <div class="main-content">

        <!-- You only need this form and the form-basic.css -->

        <g:form class="form-basic" method="post" controller="flight" action="add" >
            <div class="form-title-row">
                <h1>Add Flight</h1>
            </div>


            <div class="form-row">
                <label>
                    <span>Flight Number</span>
                    <input type="text" name="flightNo">
                </label>
            </div>

            <div class="form-row">
                <label>
                    <span>Source</span>
                    <input type="text" name="source">
                </label>
            </div>

            <div class="form-row">
                <label>
                    <span>Destination</span>
                    <input type="text" name="destination">
                </label>
            </div>

            <div class="form-row">
                <label>
                    <span>Date</span>
                    <input type="date" name="date">
                </label>
            </div>

            <div class="form-row">
                <label>
                    <span>Time Of Departure</span>
                    <input type="time" name="timeOfDeparture">
                </label>
            </div>

            <div class="form-row">
                <label>
                    <span>Time Of Arrival</span>
                    <input type="time" name="timeOfArrival">
                </label>
            </div>


            <div class="form-row">
                <label>
                    <span>Price</span>
                    <input type="text" name="price">
                </label>
            </div>
            <div class="form-row">
                <label>
                    <span>Capacity</span>
                    <input type="text" name="capacity">
                </label>
            </div>
            <div class="form-row">
                <button type="submit">Add</button>
            </div>

        </g:form>

    </div>

</body>

</html>

