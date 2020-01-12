<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film ID</title>
</head>
<body>
<h2>Perform a GET request to <em>filmID</em>.</h2>
	<form action="getFilm.do" method="GET">
		<input type="number" name="filmID" /> 
		<input type="submit" value="Search" />
	</form>
	<br>
<h3>Go to home page.</h3>
	<form action="getHome.do" method="GET">
		<input type="submit" value="Home Page" />
	</form>

</body>
</html>