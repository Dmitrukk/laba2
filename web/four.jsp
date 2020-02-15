<%@ page import="lab2.Car" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Text</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<form action="result.jsp" method="post">
    <p class="title"><b>Write your additional wishes:</b></p>
    <label>
        <textarea rows="10" cols="47" name="text"></textarea>
    </label>
    <p><input class="button" type="submit" value="Send"></p>
</form>
<%
    if (request.getParameter("additionalInfo") != null) {
        String additionalInfo = request.getParameter("additionalInfo");
        out.println("additionalInfo " + additionalInfo);
        Car car = (Car) session.getAttribute("car");
        car.setAdditionalInfo(additionalInfo);
        //response.sendRedirect("orderPage.jsp");
    }
%>
</body>
</html>
