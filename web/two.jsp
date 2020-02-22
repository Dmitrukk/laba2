<%@ page import="lab2.Car" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Color</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<%
    if(request.getParameter("carMark")!=null) {
        String mark = request.getParameter("carMark");
        Car car = (Car) session.getAttribute("car");
        car.setMark(mark);
    }
%>

<form action="three.jsp" method="post">
    <p class="title"><b>What color do you want?</b></p>
    <p><input name="color" type="radio" value="white"> white</p>
    <p><input name="color" type="radio" value="grey"> grey</p>
    <p><input name="color" type="radio" value="black"> black</p>
    <p><input name="color" type="radio" value="red"> red</p>
    <p><input name="color" type="radio" value="green"> green</p>
    <p><input class="button" type="submit" value="Choose"></p>
</form>
</body>
</html>
