<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search For Film By Keyword</title>
</head>
<body>
<h2>Perform a GET request to <em>searchFilmByKeyword</em>.</h2>
	<form action="searchFilm.do" method="GET">
		<input type="text" name="key" /> 
		<input type="submit" value="Search" />
	</form>
	<h3>Go to home page.</h3>
	<form action="getHome.do" method="GET">
		<input type="submit" value="Home Page" />
	</form>

</body>
</html>