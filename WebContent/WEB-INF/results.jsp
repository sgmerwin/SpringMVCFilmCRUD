<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film ID</title>
</head>
<body>

<c:choose>
<c:when test = "${empty films}">
<p>
The film is not in the database.
</p>
</c:when>
<c:otherwise>

<ul>
<li>ID: ${films.filmID}</li>
<li>Title: ${films.filmTitle}</li>
<li>Desc: ${films.filmDesc}</li>
<li>Release Year: ${films.releaseFilm}</li>
<li>Language: ${films.langFilm}</li>
<li>Rating: ${films.ratingFilm}</li>
<li>Category: ${films.category}</li>
</ul>
<h3>Actors</h3>
<ul>
<c:forEach var = "actor" items="${films.actor}">
<li>${actor.actorFirstName} , ${actor.actorLastName}</li>
</c:forEach>
</ul>

</c:otherwise>
</c:choose>
<br>
<h3>Go to home page.</h3>
	<form action="getHome.do" method="GET">
		<input type="submit" value="Home Page" />
	</form>

</body>
</html>