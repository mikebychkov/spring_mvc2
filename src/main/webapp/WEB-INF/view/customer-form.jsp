<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
    <title>Customer form</title>

    <style>
        .error {color:red}
    </style>
</head>
<body>

<form:form action="processForm" method="post" modelAttribute="customer">

    <label for="firstName">First name: </label>
    <form:input type="text" path="firstName" id="firstName" />

    <br><br>

    <label for="lastName">Last name (*): </label>
    <form:input type="text" path="lastName" id="lastName" />

    <form:errors path="lastName" cssClass="error" />

    <br><br>

    <input type="submit" value="Submit">

</form:form>

</body>
</html>
