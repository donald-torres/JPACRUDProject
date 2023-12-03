package com.skilldistillery.jpafavoritemovies.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

class MovieTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Movie movie;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAFavoriteMovies");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		movie = em.find(Movie.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		movie = null;
	}

	@Test
	void test_Movie_basic_mappings() {
		assertNotNull(movie);
		assertEquals("Princess Mononoke", movie.getTitle());
		assertEquals(1997, movie.getReleaseYear());
		assertEquals(133, movie.getLength());
	}

}
