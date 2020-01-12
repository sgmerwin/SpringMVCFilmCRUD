<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Film</title>
</head>
<body>

<c:choose>
<c:when test = "${empty films}">
</c:when>
<c:otherwise>

<ul>
<li>Current ID: ${films.filmID}</li>
<li>Current Title: ${films.filmTitle}</li>
<li>Current Desc: ${films.filmDesc}</li>
<li>Current Release Year: ${films.releaseFilm}</li>
<li>Current Language: ${films.langFilm}</li>
<li>Current Rating: ${films.ratingFilm}</li>
</ul>
<ul>
<c:forEach var = "actor" items="${films.actor}">
<li>${actor.actorFirstName} , ${actor.actorLastName}</li>
</c:forEach>
</ul>
</c:otherwise>
</c:choose>

<c:choose>
<c:when test = "${films.filmID le 1000}">
The ID is less than or equal to 1000. The film will not be updated.
</c:when>
<c:when test = "${empty films}">
The film is empty.
</c:when>
<c:otherwise>
The film will be updated.
<br>
<h2>Perform an UPDATE request to <em>film database</em></h2>
	<form action="editFilm.do" method="POST">
		Film ID: <input type = "number" name="filmID" /><br>
		Film Title: <input type="text" name="filmTitle" /><br>
		Film Desc: <input type="text" name="filmDesc" /><br>
		Language Options: <select name="langFilm">
		<option value=1>English</option>
		<option value=2>Italian</option>
		<option value=3>Japanese</option>
		<option value=4>Mandarin</option>
		<option value=5>French</option>
		<option value=6>German</option>
		</select><br>
		Release Year: <input type="text" name="releaseFilm" /><br>
		Rating Options: <select name="filmRating">
		<option value="G">G</option>
		<option value="PG">PG</option>
		<option value="PG-13">PG-13</option>
		<option value="R">R</option>
		<option value="NC-17">NC-17</option>
		</select><br>
 		<input type="submit" value="Submit" />
	</form>
</c:otherwise>
</c:choose>
