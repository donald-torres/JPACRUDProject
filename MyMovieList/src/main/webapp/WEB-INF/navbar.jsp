<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg bg-dark body-dark" data-bs-theme="dark">
    <style>
body {
	color: white;
	background-image:
		url('https://images.template.net/wp-content/uploads/2014/09/Cool-Website-Backgrounds600.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
	font color= white;
}
</style>
  <div class="container-fluid">
    <a class="navbar-brand" href="#">My Movie List</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="home.do">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="getList.do">Show All Movies</a>
        </li>
      </ul>
      <form class="d-flex" role="search" action="singleMovie.do">
        <input class="form-control me-2" type="number" name="movieId" placeholder="Movie ID" aria-label="Search By ID" required>
        <button class="btn btn-outline-warning" type="submit">Search By ID</button>
      </form>
    </div>
  </div>
</nav>