<%@ page import="lab2.Car" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Text</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<%
    if (request.getParameter("add") != null) {
        Car car = (Car) session.getAttribute("car");
        String select[] = request.getParameterValues("add");
        car.setCharacteristics(new ArrayList<String>(Arrays.asList(select)));
    }
%>

<form action="result.jsp" method="post">
    <p class="title"><b>Write your additional wishes:</b></p>
    <label>
        <textarea rows="10" cols="47" name="additionalInfo"></textarea>
    </label>
    <p><input class="button" type="submit" value="Send"></p>
</form>

</body>
</html>
