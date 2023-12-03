<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Movies</title>
</head>
<body>
<a href="home.do"><button>Home</button></a>
<a href=" javascript: history.back()"><button>Go back</button></a>
	<form>
		<c:choose>
			<c:when test="${! empty movie}">
				<c:forEach items="${movie}" var="movie">
				
						<image src="${movie.imageUrl}"></image>
						Title: <a href="singleMovie.do?movieId=${movie.id}">${movie.title}</a>
						Released in: ${movie.releaseYear}
						Runtime: ${movie.length} minutes.
						Description: ${movie.description}
				
				</c:forEach>
			</c:when>
			<c:otherwise>
				<h1>NO MOVIES FOUND!!!</h1>
			</c:otherwise>
		</c:choose>
	</form>
</body>
</html>