<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie Update</title>
</head>
<body>
	<a href="home.do"><button>Home</button></a>
	<a href=" javascript: history.back()"><button>Go back</button></a>
	<c:choose>
		<c:when test="${not empty movie}">
			<h5>${movie.title}, with the ID number ${movie.id}, has been
				updated</h5>
			<ul>
				<image src="${movie.imageUrl}"></image>
				<li>${movie.title}</li>
				<li>${movie.description}</li>
				<li>${movie.releaseYear}</li>
				<li>${movie.length}</li>
			</ul>
		</c:when>
		<c:otherwise>
			<h3>Movie not found</h3>
		</c:otherwise>
	</c:choose>
</body>
</html>