<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>
<body>
<jsp:include page="navbar.jsp" />
	<h1>Welcome to the My Favorite Movies Web Site</h1>

	<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <a href="singleMovie.do?movieId=1"><img src="https://ekostoriesdotcom.files.wordpress.com/2021/03/mononoke010.jpg?w=1200" class="d-block w-100" alt="Princess Mononoke"></a>

      <div class="carousel-caption d-none d-md-block">
        <h5>Princess Mononoke</h5>
      </div>
    </div>
    <div class="carousel-item">
      <a href="singleMovie.do?movieId=2"><img src="https://images7.alphacoders.com/115/1158831.jpg" class="d-block w-100" alt="Serenity"></a>

      <div class="carousel-caption d-none d-md-block">
        <h5>Serenity</h5>
      </div>
    </div>
    <div class="carousel-item">
      <a href="singleMovie.do?movieId=5"><img src="https://prd-rteditorial.s3.us-west-2.amazonaws.com/wp-content/uploads/2017/10/17142445/Talladega-Nights-Streaming.jpg" class="d-block w-100" alt="Talladega Nights"></a>

      <div class="carousel-caption d-none d-md-block">
        <h5>Talladega Nights: The Ballad of Ricky Bobby</h5>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

	
	<form action="createMovie.do" method="GET" >
		<h3>Add a Movie</h3>
		<h6>* required fields</h6>
		
		<label for="title">*Title: </label> <input type="text"name="title" required/><br> 
		
		<label for="description">Description: </label><input type="text" name="description"/><br>
		
		<label for="releaseYear">Release Year: </label> <input type="text" name="releaseYear"/><br> 
		
		<label for="imageUrl">Image URL: </label> <input type="text" name="imageUrl"/><br> 
		
		<label for="length">Length: </label> <input type="text" name="length"/><br>
		
		<button type="submit" class="btn btn-success">Add Movie</button>

	</form>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>