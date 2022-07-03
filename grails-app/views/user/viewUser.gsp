%{--<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 11/28/2017
  Time: 3:44 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
    </tr>
    <g:each in="${u}" var="i">
        <tr>
        <th>${i.id}</th>
        <th>${i.name}</th>
        <th>${i.email}</th>
        </tr>
    </g:each>
</table>



</body>
</html>--}%

<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <title>Users</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'styleTable.css')}" type="text/css">
   %{-- <link rel="stylesheet" href="css/style.css">--}%
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <g:javascript  src="indexTable.js"></g:javascript>

</head>

<body style="background-image:url('${resource(dir: "images", file: "intro-bg.jpg")}')">
<section>
    <!--for demo wrap-->
    <h1>User List</h1>
    <div class="tbl-header">
        <table cellpadding="0" cellspacing="0" border="0">
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
            </tr>
            </thead>
        </table>
    </div>
    <div class="tbl-content">
        <table cellpadding="0" cellspacing="0" border="0">
            <tbody>
            <g:each in="${u}" var="i">
                <tr>
                    <th>${i.id}</th>
                    <th>${i.name}</th>
                    <th>${i.email}</th>
                </tr>
            </g:each>
            </tbody>
        </table>
    </div>
</section>
</body>
</html>



