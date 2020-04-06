
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab4 Zadanie 3</title>
    </head>
    <body>
        <h1>Tabela osób</h1>
        <table style="width:50%">
            <tr>
                <th>Imię</th>
                <th>Nazwisko</th>
                <th>Email</th>
            </tr>
            <c:forEach items="${lista}" var="dane">
                <tr>
                    <td>
                        ${dane.firstName}
                    </td>
                    <td>
                        ${dane.lastName}
                    </td>
                    <td>
                        ${dane.email}
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
