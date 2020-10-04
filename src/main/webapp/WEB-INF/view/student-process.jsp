<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Process student info</title>
</head>
<body>

Process student info: ${studentModel.firstName} ${studentModel.secondName} (${studentModel.country})

<br><br>

Students favorite language: ${studentModel.favoriteLanguage}

<br><br>

Student OS:

<ul>
    <c:forEach var="tmp" items="${studentModel.operatingSystem}">
        <li>${tmp}</li>
    </c:forEach>
</ul>

</body>
</html>
