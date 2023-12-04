<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Movies</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>
<body>
<jsp:include page="navbar.jsp" />

	<form>
		<c:choose>
			<c:when test="${! empty movie}">
				<c:forEach items="${movie}" var="movie">
				
						<image src="${movie.imageUrl}"></image>
						<p>Title: <a href="singleMovie.do?movieId=${movie.id}" class="fw-bolder fs-4 link-danger link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">${movie.title}</a></p>
						<p>Released in: ${movie.releaseYear}</p>
						<p>Runtime: ${movie.length} minutes.</p>
						<p>Description: ${movie.description}</p>
				
				</c:forEach>
			</c:when>
			<c:otherwise>
				<h1>NO MOVIES FOUND!!!</h1>
			</c:otherwise>
		</c:choose>
	</form>
<a href=" javascript: history.back()"><button class="btn btn-warning">Go back</button></a>
<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>