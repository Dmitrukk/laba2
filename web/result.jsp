<%@ page import="lab2.Car" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="/WEB-INF/car.tld" %>
<html>
<head>
    <title>Your car</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>
<%
    if (request.getParameter("additionalInfo") != null) {
        String additionalInfo = request.getParameter("additionalInfo");
        out.println("additionalInfo " + additionalInfo);
        Car car = (Car) session.getAttribute("car");
        car.setAdditionalInfo(additionalInfo);
    }
%>

<p> Your car </p>
<div class="picture">
    <%
        Car car = (Car) session.getAttribute("car");
        if (car.color.equals("white")) {
    %>
    <img src="img/white.jpg" width="600px" height="400px">
    <%} else if (car.color.equals("grey")) {%>
    <img src="img/grey.jpg" width="600px" height="400px">
    <%} else if (car.color.equals("black")) {%>
    <img src="img/black.jpg" width="600px" height="400px">
    <%} else if (car.color.equals("red")) {%>
    <img src="img/red.png" width="600px" height="400px">
    <%} else if (car.color.equals("green")) {%>
    <img src="img/green.png" width="600px" height="400px">
    <%}%>
</div>

<hr>
<c:car/>
<hr>
</body>
</html>
