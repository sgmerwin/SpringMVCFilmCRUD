package com.skilldistillery.film.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.film.data.FilmDAO;

@Controller
public class FilmController {
	
	@Autowired
	private FilmDAO dao;
	@RequestMapping("home.do")
	public String home() {
	
	return "WEB-INF/home.jsp";

}	
	@RequestMapping(path = "getFilm.do" , method = RequestMethod.GET)
	public void getFilm(){
		System.err.println("working");
	}
}
