<%@ page import="lab2.Car" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Else</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<%
    if(request.getParameter("color")!=null) {
        String color = request.getParameter("color");
        Car car = (Car) session.getAttribute("car");
        car.setColor(color);
    }
%>

<form method="post" action="four.jsp">
    <p class="title"><b>If you require anything else, just сhoose this.</b></p>
    <p><input type="checkbox" name="add" value="Air conditioning">Air conditioning <Br>
        <input type="checkbox" name="add" value="luke">luke<Br>
        <input type="checkbox" name="add" value="mechanics">mechanics<Br>
    <p><input class="button" type="submit" value="Send"></p>
</form>
</body>
</html>
