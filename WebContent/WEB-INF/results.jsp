<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film ID Test</title>
</head>
<body>

<c:choose>
<c:when test = "${empty films}">
<p>
no film
</p>
</c:when>
<c:otherwise>
<p>
${films}
</p>
</c:otherwise>
</c:choose>




</body>
</html>