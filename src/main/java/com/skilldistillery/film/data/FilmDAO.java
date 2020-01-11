package com.skilldistillery.film.data;

import java.util.List;

import org.springframework.stereotype.Component;

import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;


@Component
public interface FilmDAO {
	public Film findFilmById(int filmId);
	
	public String getFilmByID();

	public List<Actor> findActorsByFilmId(int filmId);

	public Actor findActorById(int actorId);

	
}
