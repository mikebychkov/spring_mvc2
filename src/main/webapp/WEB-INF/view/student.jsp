<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Student page</title>
</head>
<body>

<form:form action="process-student" method="post" modelAttribute="studentModel">

    <label for="firstName">First name: </label>
    <form:input type="text" id="firstName" path="firstName" placeholder="First name" />

    <br><br>

    <label for="secondName">Second name: </label>
    <form:input type="text" id="secondName" path="secondName" placeholder="Second name" />

    <br><br>

    <label for="country">Country: </label>
    <form:select id="country" path="country">
        <form:options items="${studentModel.countryOptions}" />
    </form:select>

    <br><br>

    Favorite language:

    Java<form:radiobutton path="favoriteLanguage" value="Java" />
    C#<form:radiobutton path="favoriteLanguage" value="C#" />
    PHP<form:radiobutton path="favoriteLanguage" value="PHP" />
    Ruby<form:radiobutton path="favoriteLanguage" value="Ruby" />

    <br><br>

    Operating System:

    Linux<form:checkbox path="operatingSystem" value="Linux" />
    Mac OS<form:checkbox path="operatingSystem" value="Mac OS" />
    MS Windows<form:checkbox path="operatingSystem" value="MS Windows" />

    <br><br>
    
    <input type="submit">

</form:form>

</body>
</html>
