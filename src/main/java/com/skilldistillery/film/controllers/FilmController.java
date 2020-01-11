package com.skilldistillery.film.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.film.data.FilmDAO;
import com.skilldistillery.film.entities.Film;

@Controller
public class FilmController {
	
	@Autowired
	private FilmDAO dao;
	@RequestMapping("home.do")
	public String home() {
	
	return "WEB-INF/home.jsp";

}	
	@RequestMapping(path = "getFilm.do" , method = RequestMethod.GET)
	public ModelAndView getFilm(@RequestParam("filmID")int FilmID){
		ModelAndView mv = new ModelAndView();
		Film film = new Film();
		film = dao.findFilmById(FilmID);
		mv.addObject("films", film);
		mv.setViewName("WEB-INF/results.jsp");
		return mv;	
	}
	
}
