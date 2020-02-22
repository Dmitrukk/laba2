<%@ page import="lab2.Car" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<%
    Car car = new Car();
    session.setAttribute("car", car);
%>
<p class="title"><b>Choose the car</b></p>
<form action="two.jsp" method="post">
    <p><select size="5" name="carMark">
        <option name="mark" value="Audi">Audi</option>
        <option name="mark" value="BMW">BMW</option>
        <option name="mark" value="Mersedes">Mersedes</option>
        <option name="mark" value="Peugeot">Peugeot</option>
        <option name="mark" value="Ferrari">Ferrari</option>
    </select></p>
    <p><input class="button" type="submit" value="Send"></p>
</form>
</body>
</html>