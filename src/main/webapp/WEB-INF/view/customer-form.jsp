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

    <label for="freePasses">Free passes: </label>
    <form:input type="text" path="freePasses" id="freePasses" />
    <form:errors path="freePasses" cssClass="error" />

    <br><br>

    <label for="postalCode">Postal Code: </label>
    <form:input type="text" path="postalCode" id="postalCode" />
    <form:errors path="postalCode" cssClass="error" />

    <br><br>

    <label for="courseCode">Course Code: </label>
    <form:input type="text" path="courseCode" id="courseCode" />
    <form:errors path="courseCode" cssClass="error" />

    <br><br>

    <input type="submit" value="Submit">

</form:form>

</body>
</html>
