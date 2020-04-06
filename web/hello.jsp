<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java Web - laboratorium 4</title>
    </head>
    <body>
        <h1>Witamy w JSP!</h1>
        <h1>Cześć, ${person.firstName} ${person.lastName}!</h1>
        <h1> Cześć, <c:out value="${person.firstName} ${person.lastName}"/>!<h1>
        <a href="mailto:${person.email}"> Napisz maila </a>
<!--
Zadanie 2 
W przydapku zwykłąego wyświtlania (11 linia) można użyć kodu html do zmiany formatu wyświetlanego tekstu lub właczenia przekazanego skryptu. 
Natomiast w drugim sposobie (12 linia) wyświetlania jest to zabezpieczone.
-->

    <c:forEach items="${dniTygodnia}" var="dzien">
        <p>
            ${dzien}
        </p>
    </c:forEach>
    </body>
</html>


