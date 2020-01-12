<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Film to Database</title>
</head>
<body>
<h2>Perform a ADD request to <em>film database</em></h2>
	<form action="addFilm.do" method="POST">
		Film Title: <input type="text" name="filmTitle" /><br>
		Film Desc: <input type="text" name="filmDesc" /><br>
		Language: <select name="langFilm">
		<option value="1">English</option>
		<option value="2">Italian</option>
		<option value="3">Japanese</option>
		<option value="4">Mandarin</option>
		<option value="5">French</option>
		<option value="6">German</option>
		</select>
		<br>
		Release Year: <input type="number" name="releaseFilm" /><br>
		Rating: <select name="ratingFilm">
		<option value="G">G</option>
		<option value="PG">PG</option>
		<option value="PG13">PG-13</option>
		<option value="R">R</option>
		<option value="NC17">NC-17</option>
		</select>
		<br>
		<br>
		<input type="submit" value="Submit" />
	</form>
	<h3>Go to home page.</h3>
		<p>
Films with an id greater than 1000 can be deleted or edited from the home page with the film ID. 
</p>
	<form action="getHome.do" method="GET">
		<input type="submit" value="Home Page" />
	</form>
</body>
</html>