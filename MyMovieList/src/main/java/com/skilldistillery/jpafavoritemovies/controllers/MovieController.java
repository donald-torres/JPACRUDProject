package com.skilldistillery.jpafavoritemovies.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.jpafavoritemovies.data.MovieDAO;
import com.skilldistillery.jpafavoritemovies.entities.Movie;

@Controller
public class MovieController {

	@Autowired
	private MovieDAO movieDao;

	@RequestMapping(path = { "/", "home.do" })
	public String index(Model model) {
		model.addAttribute("movieList", movieDao.findAll());
		return "home";
	}

	@RequestMapping(path = "getList.do")
	public String showAll(Model model) {
		model.addAttribute("movie", movieDao.findAll());
		return "movieList";
	}

	@RequestMapping(path = "singleMovie.do")
	public String showMovie(@RequestParam("movieId") int movieId, Model model) {
		model.addAttribute("movie", movieDao.findById(movieId));
		return "movie";
	}

	@RequestMapping(path = "createMovie.do", method = RequestMethod.GET)
	public String addMovie(Movie movie, RedirectAttributes redir) {
		redir.addFlashAttribute("movie", movieDao.createMovie(movie));
		return "redirect:newMovie.do";
	}

	@GetMapping(path = "newMovie.do")
	public String movieAdded() {
		return "newMovie";
	}

	@RequestMapping(path = "updateMovie.do", method = RequestMethod.GET)
	public String fixMovie(@RequestParam("movieId") int movieId, Movie movie, Model model) {
		model.addAttribute("movie", movieDao.updateMovie(movieId, movie));
		return "updateMovie";
	}

	@RequestMapping(path = "deleteMovie.do", method = RequestMethod.GET)
	public String deleteMovie(@RequestParam("movieId") int movieId, Model model) {
		model.addAttribute("movie", movieDao.deleteMovie(movieId));
		return "deleteMovie";
	}

}
