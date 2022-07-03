<%--
  Created by IntelliJ IDEA.
  User: saneel
  Date: 12/5/17
  Time: 8:36 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <g:javascript library="jquery"/>
    <r:layoutResources/>
</head>

<body>

<form method="post" action="test" onsubmit=" return add()">
    <input type="text" name="fname" id="fname"/>
<input type="submit" value="add" >
</form>

<g:javascript>

function add(){
    var fname = $("#fname").val();

    console.log(fname);

    if(fname==""){
        alert("first name is required.");
    }

    return false;
}



</g:javascript>
<r:layoutResources/>
</body>
</html>