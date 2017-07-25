package Web.Modelo;

import java.io.Serializable;


public class Peliculas implements Serializable{

	private static final long serialVersionUID = -8767337896773261247L;

	private int id;
	private String titulo;
	private int calificacion;
	private String opinion;
	private String imdb;
	private int anio;
	private String website;
	private String video;
	
	public int getId() {
		return id;
	}

	public String getTitulo() {
		return titulo;
	}

	public int getCalificacion() {
		return calificacion;
	}

	public String getOpinion() {
		return opinion;
	}

	public String getImdb() {
		return imdb;
	}

	public int getAnio() {
		return anio;
	}

	public String getWebsite() {
		return website;
	}
	
	public String getEstrellas() {
				
		switch (calificacion) {
		  case  0 : 
			  return "images/0star.png";

		  case 1 : 
			  return "images/1star.png";

		  case 2 : 
			  return "images/2star.png";

		  case 3 : 
			  return "images/3star.png";
			  
		  case 4 : 
			  return "images/4star.png";
			  
		  case 5 : 
			  return "images/5star.png";


		  /***En cualquier otro caso ****/ 
		  default:
			  return "/images/0star.png";
		}
	}
	
	public String getVideo(){
		return video;
	}
	

	public void setId(int id) {
		this.id = id;
	}
	public void setTitulo(String title) {
		titulo = title;
	}
	public void setCalificacion(int score) {
		calificacion = score;
	}
	public void setOpinion(String opinion) {
		this.opinion = opinion;
	}
	public void setImdb(String imdb) {
		this.imdb = imdb;
	}
	public void setAnio(int year) {
		anio = year;
	}

	public void setWebsite(String website) {
		this.website = website;
	}
	
	public void setVideo(String video){
		this.video=video;
	}
}

	


