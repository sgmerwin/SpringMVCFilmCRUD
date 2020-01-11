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
<ul>
<c:forEach var = "film" items="${films}">
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
</body>
</html>