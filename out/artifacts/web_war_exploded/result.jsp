<%@ page import="lab2.Car" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="/WEB-INF/car.tld" %>
<html>
<head>
    <title>Your car</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>
<p> Your car </p>
    <div class="picture">
        <%Car car = (Car) session.getAttribute("car");
        if (car.color == "white"){%>
            <img src="img/white.jpg">
        <%} else if(car.color == "grey"){%>
            <img src="img/grey.jpg">
        <%} else if (car.color == "black"){%>
            <img src="img/black.jpg">
        <%} else if (car.color =="red"){%>
            <img src="img/red.png">
        <%} else if (car.color =="green"){%>
            <img src="img/green.png">
        <%}%>
    </div>

<hr>
    <c:car/>
<hr>
</body>
</html>
