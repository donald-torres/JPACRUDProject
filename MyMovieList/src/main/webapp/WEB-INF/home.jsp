<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>

	<h1>Welcome to the My Favorite Movies Web Site</h1>

	<form action="singleMovie.do" method="GET">
	
		Get Movie By ID: <input type="number" name="movieId" required>
		
		<button type="submit">Show Movie</button>
		
	</form>

	<form action="getList.do" method="GET">
	
		<input type="submit" value="See all movies" />
		
	</form>
	
	
	
	<form action="createMovie.do" method="GET">
		<h3>Add a Movie</h3>
		<h6>* required fields</h6>
		
		<label for="title">Title*</label> <input type="text"name="title" required/><br> 
		
		<label for="description">Description</label><input type="text" name="description"/><br> 
		
		<label for="releaseYear">Release Year</label> <input type="text" name="releaseYear"/><br> 
		
		<label for="imageUrl">Image URL</label> <input type="text" name="imageUrl"/><br> 
		
		<label for="length">Length</label> <input type="text" name="length"/><br>
		
		<button type="submit">Add Movie</button>

	</form>
	
	
</body>
</html>