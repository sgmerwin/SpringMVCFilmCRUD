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
	<form action="updateFilm.do" method="GET">
		Current Film ID: <input type="text" name="filmID" /><br>
		<input type="submit" value="Submit" />
	</form>
	<h3>Go to home page.</h3>
	<form action="getHome.do" method="GET">
		<input type="submit" value="Home Page" />
	</form>
</body>
</html>