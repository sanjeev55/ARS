%{--
<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 12/1/2017
  Time: 4:22 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <script src="https://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'styleButton.css')}" type="text/css">

</head>

<body>
<h3>User information</h3><br>
Name:<input type="text" readonly value="${u.name}"><br>
Email:<input type="text" readonly value="${u.email}"><br>

<g:link controller="user" action="backDashboard">
    <section>
        <button id="js-trigger-overlay" type="button">Home</button>
    </section>
</g:link>
</body>
</html>--}%

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Information</title>

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'form-basic.css')}">


</head>


<body style="background-image:url('${resource(dir: "images", file: "user_bg.jpg")}')">

<div class="main-content">

<!-- You only need this form and the form-basic.css -->

    <g:form class="form-basic" method="post" controller="user" action="backDashboard">
        <div class="form-title-row">
            <h1>User Information</h1>
        </div>

        <div class="form-row">
            <label>
                <span>Name</span>
                <input type="text" readonly value="${u.name}">
            </label>
        </div>
        <div class="form-row">
            <label>
                <span>Email</span>
                <input type="text" readonly value="${u.email}">
            </label>
        </div>



        <div class="form-row">
            <button type="submit">Home</button>
        </div>

    </g:form>

</div>

</body>

</html>
