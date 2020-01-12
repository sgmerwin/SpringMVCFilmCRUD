<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Film to Database with ID Greater Than 1000</title>
</head>
<body>
<h2>Perform an Update request to <em>film database</em></h2>
	<form action="updateFilm.do" method="POST">
		Current Film ID: <input type="text" name="filmID" /><br>
		Updated Film Title: <input type="text" name="filmTitle" /><br>
		Updated Film Desc: <input type="text" name="filmDesc" /><br>
		Updated Language: <select name="langFilm">
		<option value="1">English</option>
		<option value="2">Italian</option>
		<option value="3">Japanese</option>
		<option value="4">Mandarin</option>
		<option value="5">French</option>
		<option value="6">German</option>
		</select>
		
		Updated Release Year: <input type="number" name="releaseFilm" /><br>
		Rating: <select name="ratingFilm">
		<option>G</option>
		<option>PG</option>
		<option>PG-13</option>
		<option>R</option>
		<option>NC-17</option>
		</select>
		
		<input type="submit" value="Submit" />
	</form>
</body>
</html>