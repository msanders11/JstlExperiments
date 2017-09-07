<%-- 
    Document   : forTokens
    Created on : Sep 7, 2017, 6:24:14 PM
    Author     : Mike
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Months</h1>
        <c:forTokens items="Jan,Feb,Mar,Jun,Jul,Aug,Sept,Oct,Nov,Dec" delims="," var="month">
            <b><c:out value="${month}"/></b><p> 
            <c:forEach var ="a" begin="1" end="30">
                <c:out value="${a}"/><p>
            </c:forEach> 
        </c:forTokens>
    </body>
</html>
