%{--
<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 12/1/2017
  Time: 4:48 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <g:javascript library="jquery"/>
    <r:layoutResources/>
</head>


<body onload="countdown()"><br>
<div id="timer"></div><br>
<g:form method="post" controller="bookedFlight" action="updateBookedFlight">

    Flight Number:<input type="text" id="flightNo" readonly value="${f.flightNo}" name="flightNo"><br>
    Date:<input type="text" readonly value="${f.date}" name="date"><br>
    Source:<input type="text" readonly value="${f.source}" name="source"><br>
    Destination:<input type="text" readonly value="${f.destination}" name="destination"><br>
    TOD:<input type="text" readonly value="${f.timeOfDeparture}" name="timeOfDeparture"><br>
    TOA:<input type="text" readonly value="${f.timeOfArrival}" name="timeOfArrival"><br>
    Total Seats:<input type="text" id="totalSeats" name="totalSeats"><br>
    Remaining Seats:<input type="text" readonly id="remainingSeats" value="${f.remainingSeat}" name="remainingSeats"><br>
    Price:<input type="text" id="price" readonly value="${f.price}" name="price"><br>
    <input type=button id="btnSubmit" value=Submit name="Book">
    <input type="hidden" name="second" id="second" value="">

</g:form>
<g:javascript>
 var value=$('#totalSeats').val();
var value1=$('#flightNo').val();

    console.log(value);
    console.log(value1);

    $('#totalSeats').focus(function(){
      console.log("sanjeev");
    });
    $('#totalSeats').keypress(function(e) {
        console.log("User is pressing key");
        if(e.which==13){
            var value=$('#totalSeats').val();
            console.log(value)
            var rem=$('#remainingSeats').val();
            console.log(value);

           if (parseInt(rem)>=parseInt(value)){

            callAjax(value,value1);
            callAjax1(value,value1);
            $('#totalSeats').prop('readonly', true)

            }else {
               alert("Not Enough Seats!!");
           }
        }


    });
 function callAjax(value,value1){
        $.ajax({
           type:'POST',
           url:"${createLink(controller: "flight", action: "updatePrice")}",
           data: {v:value,v1:value1},

           success: function(response){
              console.log(response);
              $('#price').val(response);
           },
           error: function(response) {

           }
        });
    }
     function callAjax1(value,value1){
        $.ajax({
        type:'POST',
        url:"${createLink(controller: "flight", action: "updateRemainingSeats")}",
        data: {v:value,v1:value1},

        success: function(response){
            console.log(response);
            $('#remainingSeats').val(response);

        },
        error: function(response) {

        }
        });
    }
    $("#btnSubmit").on("click", function(){
 	// Submit the form
    document.querySelector("form").submit();
    });

 var sec=20;
        function countdown(){
            if(parseInt(sec)>0){
                document.getElementById("timer").innerHTML="Time Remaining"+" "+sec+" "+"Seconds";
                sec=parseInt(sec)-1;
                var currentSec=document.getElementById("second");
                currentSec.value=sec;

                setTimeout("countdown()",1000);
            }
            else{
                if(parseInt(sec)==0){
                    document.getElementById("timer").innerHTML="Time Remaining"+" "+sec+" "+"Seconds";
                    alert("Time Up");
                    var inputs=document.getElementsByTagName('input');
                    for(var i=0;inputs.length>i;i++){
                        if(inputs[i].type=='button'){
                            inputs[i].disabled=true;
                        }
                    }
                }
            }
        }
</g:javascript>
<r:layoutResources/>


</body>
</html>--}%

<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Book Flight</title>
    <g:javascript library="jquery"/>
    <r:layoutResources/>


    <link rel="stylesheet" href="${resource(dir: 'css', file: 'form-basic.css')}">


</head>
<body onload="countdown()" style="background-image:url('${resource(dir: "images", file: "rusty-plane_00442769.jpg")}');background-size: 120%"><br>
<br>

<div class="main-content">


<!-- You only need this form and the form-basic.css -->

    <g:form class="form-basic" method="post" controller="bookedFlight" action="updateBookedFlight" >
        <div id="timer"></div><br>

        <div class="form-title-row">
            <h1>Book Flight</h1>
        </div>

        <input type="hidden" name="id" value="${f.id}">
        <div class="form-row">
            <label>
                <span>Flight Number</span>
                <input type="text" name="flightNo" readonly value="${f.flightNo}" id="flightNo" >
            </label>
        </div>

        <div class="form-row">
            <label>
                <span>Source</span>
                <input type="text" name="source" value="${f.source}" readonly>
            </label>
        </div>

        <div class="form-row">
            <label>
                <span>Destination</span>
                <input type="text" name="destination" value="${f.destination}" readonly>
            </label>
        </div>

        <div class="form-row">
            <label>
                <span>Date</span>
                <input type="date" name="date" value="${f.date}" readonly>
            </label>
        </div>

        <div class="form-row">
            <label>
                <span>Time Of Departure</span>
                <input type="time" name="timeOfDeparture" value="${f.timeOfDeparture}" readonly>
            </label>
        </div>

        <div class="form-row">
            <label>
                <span>Time Of Arrival</span>
                <input type="time" name="timeOfArrival" value="${f.timeOfArrival}" readonly>
            </label>
        </div>
        <div class="form-row">
            <label>
                <span>Total Seats</span>
                <input type="text" name="totalSeats" id="totalSeats">
            </label>
        </div>

        <div class="form-row">
            <label>
                <span>Remaining Seats</span>
                <input type="text" name="remainingSeats" value="${f.remainingSeat}" id="remainingSeats" readonly>
            </label>
        </div>

        <div class="form-row">
            <label>
                <span>Price</span>
                <input type="text" name="price" value="${f.price}" id="price" readonly>
            </label>
        </div>
        <input type="hidden" name="second" id="second" value="">

        <div class="form-row" style="text-align: center">
            <input type="button" id="btnSubmit" value=Submit name="Book">
          %{--  <button id="btnSubmit" name="btnSubmit">Book</button>--}%
        </div>

    </g:form>

    <g:javascript>
$(document).ready(function() {
  $("#btnSubmit").css("visibility","hidden");
});
 var value=$('#totalSeats').val();
var value1=$('#flightNo').val();

    console.log(value);
    console.log(value1);


    $('#totalSeats').keypress(function(e) {

        console.log("User is pressing key");

        if(e.which==13){

            var value=$('#totalSeats').val();
            console.log(value)
            var rem=$('#remainingSeats').val();
            console.log(value);

           if (parseInt(rem)>=parseInt(value)){

            callAjax(value,value1);
            callAjax1(value,value1);

            $('#btnSubmit').css("visibility","visible");

            $('#totalSeats').prop('readonly', true);

            }else {
               alert("Not Enough Seats!!");
           }
        }


    });
 function callAjax(value,value1){
        $.ajax({
           type:'POST',
           url:"${createLink(controller: "flight", action: "updatePrice")}",
           data: {v:value,v1:value1},

           success: function(response){
              console.log(response);
              $('#price').val(response);
           },
           error: function(response) {

           }
        });
    }
     function callAjax1(value,value1){
        $.ajax({
        type:'POST',
        url:"${createLink(controller: "flight", action: "updateRemainingSeats")}",
        data: {v:value,v1:value1},

        success: function(response){
            console.log(response);
            $('#remainingSeats').val(response);

        },
        error: function(response) {

        }
        });
    }
    $("#btnSubmit").on("click", function(){
 	// Submit the form
    document.querySelector("form").submit();
    });

 var sec=20;
        function countdown(){
            if(parseInt(sec)>0){
                document.getElementById("timer").innerHTML="Time Remaining"+" "+sec+" "+"Seconds";
                sec=parseInt(sec)-1;
                var currentSec=document.getElementById("second");
                currentSec.value=sec;

                setTimeout("countdown()",1000);
            }
            else{
                if(parseInt(sec)==0){
                    document.getElementById("timer").innerHTML="Time Remaining"+" "+sec+" "+"Seconds";
                    alert("Time Up");
                    var inputs=document.getElementsByTagName('input');
                    for(var i=0;inputs.length>i;i++){
                        if(inputs[i].type=='button'){
                            inputs[i].disabled=true;
                        }
                    }
                }
            }
        }

        function check(){
            var totalSeats=$("#totalSeats").val();
            console.log(totalSeats);

            if(totalSeats.length<0){
                alert("Please enter the total number of seats you want to book!")

            }

            return false;
        }
    </g:javascript>
    <r:layoutResources/>

</div>

</body>

</html>

