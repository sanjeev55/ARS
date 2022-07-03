%{--
<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 11/29/2017
  Time: 10:35 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:form method="post" controller="flight" action="searchBySource1">
    Enter the Source:
    <select name="source">
        <option value="Kathmandu">Kathmandu</option>
        <option value="Pokhara">Pokhara</option>
        <option value="Bhairawa">Bhairawa</option>
        <option value="Jomsom">Jomsom</option>
        <option value="Biratnagar">Biratnagar</option>
        <option value="Surkhet">Surkhet</option>
        <option value="Simara">Simara</option>
        <option value="Tumlingtar">Tumlingtar</option>
    </select><br>
    <input type="submit" name="Search">
</g:form>

</body>
</html>--}%

<!DOCTYPE html>
<html>

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Search</title>

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'form-basic.css')}">
   %{-- <link rel="stylesheet" href="${resource(dir: 'css', file: 'demo.css')}">--}%

</head>
<body style="background-image:url('${resource(dir: "images", file: "aeroplane1.jpg")}');background-size: 100%">


    <div class="main-content">

        <!-- You only need this form and the form-basic.css -->

        <g:form class="form-basic" method="post" controller="flight" action="searchBySource1">
            <div class="form-title-row">
                <h1>Search Flight</h1>
            </div>



            <div class="form-row">
                <label>
                    <span>Source</span>
                    <select name="source">
                        <option value="Kathmandu">Kathmandu</option>
                        <option value="Pokhara">Pokhara</option>
                        <option value="Bhairawa">Bhairawa</option>
                        <option value="Jomsom">Jomsom</option>
                        <option value="Biratnagar">Biratnagar</option>
                        <option value="Surkhet">Surkhet</option>
                        <option value="Simara">Simara</option>
                        <option value="Tumlingtar">Tumlingtar</option>
                    </select>
                </label>
            </div>



            <div class="form-row">
                <button type="submit">Search</button>
            </div>

        </g:form>

    </div>

</body>

</html>

