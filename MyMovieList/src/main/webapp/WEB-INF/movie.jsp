<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${movie.title}</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>
<body>
<jsp:include page="navbar.jsp" />
	<c:choose>
		<c:when test="${not empty movie}">
				<p>Movie ID: ${movie.id}</p>
				<image src="${movie.imageUrl}"></image>
				<p><h3><strong>${movie.title}</strong></h3>(Released: ${movie.releaseYear} Runtime: ${movie.length} minutes.)</p>
				
				Description:
				<p>${movie.description}</p>
				
			<form action="updateMovie.do" method="GET">
				<h4>Update Movie</h4>
				<h6>* required fields</h6>
				<br> <input type="hidden" value=${movie.id } name="movieId">
				
				<label for="title">*Title: </label><input type="text" name="title" value="${movie.title}" required><br>
				
				<label for="description">Description: </label><input type="text" name="description" value="${movie.description}"><br> 
				
				<label for="releaseYear">Release Year: </label><input type="text" name="releaseYear" value="${movie.releaseYear}"><br> 
				
				<label for="imageUrl">Image URL: </label><input type="text" name="imageUrl" value="${movie.imageUrl}"><br>
				
				<label for="length">Length: </label><input type="text" name="length" value="${movie.length}"><br>
				
				<button type="submit" class="btn btn-success">Update ${movie.title}</button>
			
			</form>
			
			<form action="deleteMovie.do" method="GET">
				<input type="hidden" name="movieId" value=${movie.id} >
				<button type="submit" class="btn btn-danger" onclick="return confirm('Are you sure?')">Delete ${movie.title}</button>
			</form>
		</c:when>
		<c:otherwise>
			<h3>Movie not found</h3>
		</c:otherwise>
	</c:choose>


	<a href=" javascript: history.back()"><button class="btn btn-warning">Go back</button></a>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>