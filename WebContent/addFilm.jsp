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
		Rating: <select name="ratingFilm">
		<option>G</option>
		<option>PG</option>
		<option>PG-13</option>
		<option>R</option>
		<option>NC-17</option>
		</select>
		<br>
		
		Category: <select name="category">
		<option value="1">Action</option>
		<option value="2">Animation</option>
		<option value="3">Children</option>
		<option value="4">Classics</option>
		<option value="5">Comedy</option>
		<option value="6">Documentary</option>
		<option value="7">Drama</option>
		<option value="8">Family</option>
		<option value="9">Foreign</option>
		<option value="10">Games</option>
		<option value="11">Horror</option>
		<option value="12">Music</option>
		<option value="13">New</option>
		<option value="14">Sci-Fi</option>
		<option value="15">Sports</option>
		<option value="16">Travel</option>
		</select>
		
		<input type="submit" value="Submit" />
	</form>
	<h3>Go to home page.</h3>
	<form action="getHome.do" method="GET">
		<input type="submit" value="Home Page" />
	</form>
</body>
</html>