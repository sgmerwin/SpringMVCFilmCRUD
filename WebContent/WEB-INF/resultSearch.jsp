<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film Search Results</title>
</head>
<body>
<c:choose>
<c:when test="${empty films}">
The search returned no results. 
</c:when>
<c:otherwise>
<ul>
<c:forEach var = "film" items="${films}">
<li> ID: ${film.filmID}</li>
<li>Title: <b>${film.filmTitle}</b>  Release Year: ${film.releaseFilm} Rating: ${film.ratingFilm}</li>
<li>Desc: ${film.filmDesc}</li>
<li>Actors</li>
<ul>
<c:forEach var = "actor" items="${film.actor}">
<li>${actor.actorFirstName} , ${actor.actorLastName}</li>
</c:forEach>
</ul>
<ul style = "list-style-type:none;">
<li> <br>  </li>
</ul>
</c:forEach>
</ul>
</c:otherwise>
</c:choose>
</body>
<h3>Go to home page.</h3>
<p>
Films with an id greater than 1000 can be deleted or edited from the home page with the film ID. 
</p>
	<form action="getHome.do" method="GET">
		<input type="submit" value="Home Page" />
	</form>
</html>