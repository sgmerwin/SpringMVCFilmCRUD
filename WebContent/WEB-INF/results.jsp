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
<h2>Film Data</h2>

<c:choose>
<c:when test = "${empty films}">
<p>
The film is not in the database.
</p>
</c:when>
<c:when test = "${films.filmID == 0}">
<p>
The film will not be created.
</p>
</c:when>
<c:otherwise>

<ul>
<li>ID: ${films.filmID}</li>
<li>Title: ${films.filmTitle}</li>
<li>Desc: ${films.filmDesc}</li>
<li>Release Year: ${films.releaseFilm}</li>
<li>Language Number: ${films.langFilm}</li>
<c:choose>
<c:when test = "${films.langFilm == 1}">
<li>Language: English</li>
</c:when>
<c:when test = "${films.langFilm == 2}">
<li>Language: Italian</li>
</c:when>
<c:when test = "${films.langFilm == 3}">
<li>Language: Japanese</li>
</c:when>
<c:when test = "${films.langFilm == 4}">
<li>Language: Mandarin</li>
</c:when>
<c:when test = "${films.langFilm == 5}">
<li>Language: French</li>
</c:when>
<c:when test = "${films.langFilm == 6}">
<li>Language: German</li>
</c:when>
</c:choose>
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
	<p>
Films with an id greater than 1000 can be deleted or edited from the home page with the film ID. 
</p>
	<form action="getHome.do" method="GET">
		<input type="submit" value="Home Page" />
	</form>

</body>
</html>