package com.skilldistillery.jpafavoritemovies.data;

import java.util.List;

import com.skilldistillery.jpafavoritemovies.entities.Movie;

public interface MovieDAO {

	Movie findById(int movieId);

	List<Movie> findAll();

	Movie createMovie(Movie movie);

	Movie updateMovie(int movieId, Movie movie);

	boolean deleteMovie(int movieId);

}
