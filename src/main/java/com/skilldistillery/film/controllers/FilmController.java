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
	@RequestMapping(path = "addFilm.do" , method = RequestMethod.POST)
	public ModelAndView addFilm(Film film) {
		ModelAndView mv = new ModelAndView();
		film = dao.createFilm(film);
		mv.addObject("films", film);
		mv.setViewName("WEB-INF/results.jsp");
		return mv;	
	}
	@RequestMapping(path = "searchFilm.do" , method = RequestMethod.GET)
	public ModelAndView searchFilm(String key) {
		ModelAndView mv = new ModelAndView();
		List<Film> film = new ArrayList<>();
		film = dao.findFilmByKeyword(key);
		mv.addObject("films", film);
		mv.setViewName("WEB-INF/resultSearch.jsp");
		return mv;	
	}
	@RequestMapping(path = "deleteFilm.do" , method = RequestMethod.POST)
	public ModelAndView deleteFilm(int id) {
		ModelAndView mv = new ModelAndView();
		Film film = new Film();
		film = dao.findFilmById(id);
		mv.addObject("films", film);
		mv.setViewName("WEB-INF/resultDelete.jsp");
		if(id > 1000 && film != null) {
			dao.deleteFilm(id);
		}
		return mv;
	}
	
	@RequestMapping(path = "updateFilm.do" , method = RequestMethod.GET)
	public ModelAndView updateFilm(int filmID) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("films", dao.findFilmById(filmID));
		mv.setViewName("WEB-INF/resultUpdate.jsp");		
		return mv;
	}
	
	@RequestMapping(path = "editFilm.do" , method = RequestMethod.POST)
	public ModelAndView editFilm(int filmID, String filmTitle, String filmDesc, String releaseFilm, int langFilm, String filmRating) {
		ModelAndView mv = new ModelAndView();
		dao.updateFilm(filmID, filmTitle, filmDesc, releaseFilm, langFilm, filmRating);
		Film film = new Film();
		film = dao.findFilmById(filmID);
		mv.addObject("films", film);
		mv.setViewName("WEB-INF/results.jsp");
		return mv;
	}
	
	@RequestMapping(path = "getHome.do" , method = RequestMethod.GET)
	public ModelAndView getHome(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/home.jsp");
		return mv;	
	}
	
	
	
}
