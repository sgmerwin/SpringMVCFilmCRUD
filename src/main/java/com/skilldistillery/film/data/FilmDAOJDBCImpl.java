package com.skilldistillery.film.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Component;

import com.skilldistillery.film.entities.Film;


@Component
public class FilmDAOJDBCImpl implements FilmDAO{
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private static final String URL = "jdbc:mysql://localhost:3306/sdvid?useSSL=false";
	private String user = "student";
	private String pass = "student";

	@Override
	public Film findFilmById(int filmID) {
		// needs to return film OBJECT or null if no data.
		Film film = null;
		try {

			Connection conn = DriverManager.getConnection(URL, user, pass);
			String sql = "SELECT * FROM film WHERE id = ?";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, filmID);
			ResultSet filmResult = stmt.executeQuery();
			if (filmResult.next()) {
				film = new Film();
				film.setFilmID(filmResult.getInt("id"));
				film.setFilmTitle(filmResult.getString("title"));
				film.setFilmDesc(filmResult.getString("description"));
				film.setReleaseFilm(filmResult.getInt("release_year"));
				film.setLangFilm(filmResult.getInt("language_id"));
				film.setRentalDuration(filmResult.getInt("rental_duration"));
				film.setRentalRate(filmResult.getDouble("rental_rate"));
				film.setLengthFilm(filmResult.getInt("length"));
				film.setReplaceCost(filmResult.getDouble("replacement_cost"));
				film.setRatingFilm(filmResult.getString("rating"));
				film.setSpecialFeatures(filmResult.getString("special_features"));
//				film.setActor(findActorsByFilmId(film.getFilmID()));
//				film.setLanguage(languageOfFilm(filmId));
			}
			filmResult.close();
			stmt.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return film;
	}

	@Override
	public String getFilmByID() {
		// TODO Auto-generated method stub
		return null;
	}
	

}
