package com.skilldistillery.film.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.film.data.FilmDAO;

@Controller
public class FilmController {
	
	@Autowired
	private FilmDAO dao;
	@RequestMapping("home.do")
	public String home() {
	
	return "WEB-INF/home.jsp";

}
}
