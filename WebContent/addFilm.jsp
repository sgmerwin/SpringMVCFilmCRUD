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
		
		Release Year: <input type="number" name="releaseFilm" /><br>
		Rating: <input type="text" name="ratingFilm" /><br>
		<input type="submit" value="Submit" />
	</form>
</body>
</html>