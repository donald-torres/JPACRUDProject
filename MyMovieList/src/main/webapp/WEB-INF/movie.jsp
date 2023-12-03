<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${movie.title}</title>
</head>
<body>
	<a href="home.do"><button>Home</button></a>
	<a href=" javascript: history.back()"><button>Go back</button></a>
	<c:choose>
		<c:when test="${not empty movie}">
			<ul>
				<image src="${movie.imageUrl}"></image>
				<li>${movie.id}</li>
				<li>${movie.title}</li>
				<li>${movie.description}</li>
				<li>${movie.releaseYear}</li>
				<li>${movie.length}</li>
			</ul>
			<form action="updateMovie.do" method="GET">
				<h4>Update Movie</h4>
				<h6>* required fields</h6>
				<br> <input type="hidden" value=${movie.id } name="movieId">
				
				<label for="title">Title</label><input type="text" name="title" value="${movie.title}" required><br>
				
				<label for="description">Description</label><input type="text" name="description" value="${movie.description}"><br> 
				
				<label for="releaseYear">Release Year</label><input type="text" name="releaseYear" value="${movie.releaseYear}"><br> 
				
				<label for="imageUrl">Image URL</label><input type="text" name="imageUrl" value="${movie.imageUrl}"><br>
				
				<label for="length">Length</label><input type="text" name="length" value="${movie.length}"><br>
				
				<button type="submit">Update ${movie.title}</button>
			
			</form>
			
			<form action="deleteMovie.do" method="GET">
				<input type="hidden" name="movieId" value=${movie.id} >
				<button type="submit">Delete ${movie.title}</button>
			</form>
		</c:when>
		<c:otherwise>
			<h3>Movie not found</h3>
		</c:otherwise>
	</c:choose>


</body>
</html>