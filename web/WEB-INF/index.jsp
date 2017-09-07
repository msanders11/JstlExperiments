<%-- 
    Document   : index
    Created on : Sep 7, 2017, 5:46:27 PM
    Author     : Mike
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL Page</title>
    </head>
    <body>
        <h1>JSTL Experiments!</h1>
        <h2>Alphabet</h2>
        <c:forEach var = "alpha" begin = "1" end = "26">
            Letter : <c:out value = "${alpha}"/>
        </c:forEach> 

    </body>
</html>
 