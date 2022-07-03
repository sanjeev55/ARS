%{--<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 11/27/2017
  Time: 9:38 AM
--%>


<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<g:form method="post" controller="user" action="dashBoard">
Email:<input type="text" name="email" placeholder="Enter your email"><br>
Password:<input type="password" name="password" placeholder="Enter your password"><br>
<input type="submit" name="Login">

</g:form>
<g:link controller="user" action="register">
    <button>Register</button>
</g:link>

</body>
</html>--}%
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Page</title>
    %{--<link rel="stylesheet" href="../css/style.css">--}%
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}">
    <g:javascript library="jquery"/>
    <r:layoutResources/>




</head>
<body style="background-image:url('${resource(dir: "images", file: "user_bg.jpg")}')" >

<div class="login-page" >
    <div class="form">
        <g:form class="register-form" method="post" controller="user" action="registerUser">
            <input type="hidden" name="page" value="register">
            <input type="text" name="name" placeholder="Enter your full name"><br>
            <input type="password" name="password" placeholder="Password">
            <input type="password" name="rpassword" placeholder="Re-Enter Password">

            <input type="text" name="email" placeholder="Email Address">
            <input type="submit" value="Register">
            <p class="message">Already registered? <a href="#">Sign In</a>  </p>
        </g:form>
        <g:form class="login-form" method="post" controller="user" action="dashBoard">
            <input type="hidden" name="page" value="Login">

            <input type="text" name="email" placeholder="Email" id="email">
            <input type="password" name="password" placeholder="Password" id="password">
            <input type="submit" value="Login">
            <p class="message">Not registered? <a href="#">Create an account</a></p>
            <p class="message"><g:link controller="user" action="forgetPassword">Forget Password</g:link></p>
        </g:form>
       %{-- <g:javascript>
            function check(){
                var email=$("#email").val();
                var password=$("#password").val();
                console.log(email);
                console.log(password);

                if(email==""){
                    alert("Email field empty!!")
                }
                else if(password==""){
                    alert("Password field empty!!")
                }
                else{
                    document.querySelector("form").submit();
                }
                return false;
            }
        </g:javascript>--}%

    </div>
</div>
%{--<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>--}%
<g:javascript library="jquery"/>
<script  src="js/index.js"></script>


<r:layoutResources/>
</body>
</html>
