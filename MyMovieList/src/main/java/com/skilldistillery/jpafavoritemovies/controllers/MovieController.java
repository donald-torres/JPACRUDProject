package com.skilldistillery.jpafavoritemovies.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.jpafavoritemovies.data.MovieDAO;

@Controller
public class MovieController {
	
	@Autowired
	private MovieDAO movieDao;

	@RequestMapping(path = { "/", "home.do" })
	public String index(Model model) {
		model.addAttribute("movieList", movieDao.findAll());
		return "home";
	}
}
