<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Student page</title>
</head>
<body>

<form:form action="process-student" method="post" modelAttribute="studentModel">

    <label for="firstName">First name:</label>
    <form:input type="text" id="firstName" name="firstName" placeholder="First name" path="firstName" />

    <br><br>

    <label for="secondName">Second name:</label>
    <form:input type="text" id="secondName" name="secondName" placeholder="Second name" path="secondName" />

    <br><br>

    <input type="submit">

</form:form>

</body>
</html>
