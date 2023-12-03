<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie Deleted</title>
</head>
<body>
	<a href="home.do"><button>Home</button></a>
	<a href=" javascript: history.back()"><button>Go back</button></a>
	<c:choose>
		<c:when test="${not empty movie}">
			<h5>Movie has been removed</h5>

		</c:when>
		<c:otherwise>
			<h3>${movie.title} not removed</h3>
		</c:otherwise>
	</c:choose>
</body>
</html>