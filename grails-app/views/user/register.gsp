<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 11/27/2017
  Time: 10:03 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>


<head>
    <title></title>
</head>

<body>
<g:form method="post" controller="user" action="registerUser">
    Name:<input type="text" name="name" placeholder="Enter your full name"><br>
    Email:<input type="text" name="email" placeholder="Enter your email address"><br>
    Password:<input type="password" name="password" placeholder="Enter your password"><br>
    <input type="submit" name="Register">
</g:form>

</body>
</html>

