package com.skilldistillery.film.entities;


import java.util.List;

import com.skilldistillery.film.entities.Film;

public class Film {
	private int filmID;
	private String filmTitle;
	private String filmDesc;
	private String releaseFilm;
	private int langFilm;
	private int rentalDuration;
	private double rentalRate;
	private int lengthFilm;
	private double replaceCost;
	private String ratingFilm;
	private String specialFeatures;
	private List<Actor> actor;
	private String language;
	private String category;
	
	public Film() {
		
	}
	
	public Film(int filmID, String filmTitle, String filmDesc, String releaseFilm, int langFilm, String ratingFilm) {
		super();
		this.filmID = filmID;
		this.filmTitle = filmTitle;
		this.filmDesc = filmDesc;
		this.releaseFilm = releaseFilm;
		this.langFilm = langFilm;
//		this.rentalDuration = rentalDuration;
//		this.rentalRate = rentalRate;
//		this.lengthFilm = lengthFilm;
//		this.replaceCost = replaceCost;
		this.ratingFilm = ratingFilm;
//		this.specialFeatures = specialFeatures;
//		this.actor = actor;
//		this.language = language;
	}
	

	public Film(String filmTitle, int filmLang, int rentalDur, double rentalRate, double replacement) {
		// TODO Auto-generated constructor stub
		this.filmTitle = filmTitle;
		this.langFilm = filmLang;
		this.rentalDuration = rentalDur;
		this.rentalRate = rentalRate;
		this.replaceCost = replacement;
		
	}

	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public List<Actor> getActor() {
		return actor;
	}
	public void setActor(List<Actor> actor) {
		this.actor = actor;
	}
	public int getFilmID() {
		return filmID;
	}
	public void setFilmID(int filmID) {
		this.filmID = filmID;
	}
	public String getFilmTitle() {
		return filmTitle;
	}
	public void setFilmTitle(String filmTitle) {
		this.filmTitle = filmTitle;
	}
	public String getFilmDesc() {
		return filmDesc;
	}
	public void setFilmDesc(String filmDesc) {
		this.filmDesc = filmDesc;
	}
	public String getReleaseFilm() {
		return releaseFilm;
	}
	public void setReleaseFilm(String releaseFilm) {
		this.releaseFilm = releaseFilm;
	}
	public int getLangFilm() {
		return langFilm;
	}
	public void setLangFilm(int langFilm) {
		this.langFilm = langFilm;
	}
	public int getRentalDuration() {
		return rentalDuration;
	}
	public void setRentalDuration(int rentalDuration) {
		this.rentalDuration = rentalDuration;
	}
	public double getRentalRate() {
		return rentalRate;
	}
	public void setRentalRate(int rentalRate) {
		this.rentalRate = rentalRate;
	}
	public int getLengthFilm() {
		return lengthFilm;
	}
	public void setLengthFilm(int lengthFilm) {
		this.lengthFilm = lengthFilm;
	}
	public double getReplaceCost() {
		return replaceCost;
	}
	public void setReplaceCost(int replaceCost) {
		this.replaceCost = replaceCost;
	}
	public String getRatingFilm() {
		return ratingFilm;
	}
	public void setRatingFilm(String ratingFilm) {
		this.ratingFilm = ratingFilm;
	}
	public String getSpecialFeatures() {
		return specialFeatures;
	}
	public void setSpecialFeatures(String specialFeatures) {
		this.specialFeatures = specialFeatures;
	}
	public void setRentalRate(double rentalRate) {
		this.rentalRate = rentalRate;
	}
	public void setReplaceCost(double replaceCost) {
		this.replaceCost = replaceCost;
	}
	
	
	
	
	@Override
	public String toString() {
		return "Film ID = " + filmID + "\n" + "Film Title = " + filmTitle + "\n" + "Film Description = " + filmDesc + "\n" +  "Release Year = "
				+ releaseFilm + "\n" + "Language = " + language + "\n"  + "Film Rating = " + ratingFilm + "\n" + "Actors = "+ actor + "\n";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((actor == null) ? 0 : actor.hashCode());
		result = prime * result + ((filmDesc == null) ? 0 : filmDesc.hashCode());
		result = prime * result + filmID;
		result = prime * result + ((filmTitle == null) ? 0 : filmTitle.hashCode());
		result = prime * result + langFilm;
		result = prime * result + ((language == null) ? 0 : language.hashCode());
		result = prime * result + lengthFilm;
		result = prime * result + ((ratingFilm == null) ? 0 : ratingFilm.hashCode());
		result = prime * result + ((releaseFilm == null) ? 0 : releaseFilm.hashCode());
		result = prime * result + rentalDuration;
		long temp;
		temp = Double.doubleToLongBits(rentalRate);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		temp = Double.doubleToLongBits(replaceCost);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + ((specialFeatures == null) ? 0 : specialFeatures.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Film other = (Film) obj;
		if (actor == null) {
			if (other.actor != null)
				return false;
		} else if (!actor.equals(other.actor))
			return false;
		if (filmDesc == null) {
			if (other.filmDesc != null)
				return false;
		} else if (!filmDesc.equals(other.filmDesc))
			return false;
		if (filmID != other.filmID)
			return false;
		if (filmTitle == null) {
			if (other.filmTitle != null)
				return false;
		} else if (!filmTitle.equals(other.filmTitle))
			return false;
		if (langFilm != other.langFilm)
			return false;
		if (language == null) {
			if (other.language != null)
				return false;
		} else if (!language.equals(other.language))
			return false;
		if (lengthFilm != other.lengthFilm)
			return false;
		if (ratingFilm == null) {
			if (other.ratingFilm != null)
				return false;
		} else if (!ratingFilm.equals(other.ratingFilm))
			return false;
		if (releaseFilm == null) {
			if (other.releaseFilm != null)
				return false;
		} else if (!releaseFilm.equals(other.releaseFilm))
			return false;
		if (rentalDuration != other.rentalDuration)
			return false;
		if (Double.doubleToLongBits(rentalRate) != Double.doubleToLongBits(other.rentalRate))
			return false;
		if (Double.doubleToLongBits(replaceCost) != Double.doubleToLongBits(other.replaceCost))
			return false;
		if (specialFeatures == null) {
			if (other.specialFeatures != null)
				return false;
		} else if (!specialFeatures.equals(other.specialFeatures))
			return false;
		return true;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	
	
	
	
	
	
	
	
}
