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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Movie updateMovie(int movieId, Movie movie) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteMovie(int movieId) {
		// TODO Auto-generated method stub
		return false;
	}

}
