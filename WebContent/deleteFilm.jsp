<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Perform a DELETE request to <em>film database</em></h2>
	<form action="deleteFilm.do" method="POST">
		ID: <input type="number" name="id" /><br>
		<input type="submit" value="Submit" />
	</form>
	<h3>Go to home page.</h3>
	<form action="getHome.do" method="GET">
		<input type="submit" value="Home Page" />
	</form>

</body>
</html>