%{--
<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 12/1/2017
  Time: 12:42 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:form method="post" action="login" controller="user">
    Your password is:<input type="text" readonly value="${p}"><br>
    <input type="submit" name="Okay">
</g:form>

</body>
</html>--}%

<!DOCTYPE html>
<html>

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Password</title>

	<link rel="stylesheet" href="${resource(dir: 'css', file: 'form-basic.css')}">

</head>


	<body style="background-image:url('${resource(dir: "images", file: "user_bg.jpg")}')">


        <!-- You only need this form and the form-basic.css -->

        <g:form class="form-basic" method="post" action="resetPassword" controller="user">



            <div class="form-row">
                <label>
                    <input type="hidden" name="email" value="${u.email}">
                    <span>Enter New Password</span>
                    <input type="password" name="password">
                    <span>Re-Enter Password</span>
                    <input type="password" name="rpassword">
                </label>
            </div>


            <div class="form-row">

                <button type="submit">Okay</button>
            </div>

        </g:form>



</body>

</html>
