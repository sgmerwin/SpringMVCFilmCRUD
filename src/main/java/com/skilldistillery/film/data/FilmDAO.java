package com.skilldistillery.film.data;

import org.springframework.stereotype.Component;

import com.skilldistillery.film.entities.Film;


@Component
public interface FilmDAO {
	public Film findFilmById(int filmId);
	
	public String getFilmByID();

	
}
