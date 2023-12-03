package com.skilldistillery.jpafavoritemovies.data;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpafavoritemovies.entities.Movie;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class MovieDAOImpl implements MovieDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Movie findById(int movieId) {
		return em.find(Movie.class, movieId);
	}

	@Override
	public List<Movie> findAll() {
		String query = "SELECT m FROM Movie m";
		List<Movie> films = em.createQuery(query, Movie.class).getResultList();

		return films;
	}

	@Override
	public Movie createMovie(Movie movie) {
		if (movie.getTitle() != null) {
			em.persist(movie);
			return movie;
		} else {
			return null;
		}

	}

	@Override
	public Movie updateMovie(int movieId, Movie movie) {

		Movie fixMovie = em.find(Movie.class, movieId);
		if (fixMovie != null) {

			fixMovie.setTitle(movie.getTitle());
			fixMovie.setDescription(movie.getDescription());
			fixMovie.setReleaseYear(movie.getReleaseYear());
			fixMovie.setImageUrl(movie.getImageUrl());
			fixMovie.setLength(movie.getLength());

		}
		return fixMovie;
	}

	@Override
	public boolean deleteMovie(int movieId) {

		Movie movieToDelete = em.find(Movie.class, movieId);
		boolean deleted = false;

		if (movieToDelete != null) {
			em.remove(movieToDelete);
			deleted = !em.contains(movieToDelete);

		}
		return deleted;
	}

}
