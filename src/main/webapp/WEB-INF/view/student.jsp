<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Student page</title>
</head>
<body>

<form:form action="process-student" modelAttribute="studentModel">

    <label for="firstName">First name:</label>
    <input type="text" id="firstName" name="firstName" placeholder="First name">

    <br><br>

    <label for="secondName">Second name:</label>
    <input type="text" id="secondName" name="secondName" placeholder="Second name">

    <br><br>

    <input type="submit">

</form:form>

</body>
</html>
