package Web.Vista;



import Web.Controlador.ControladorPeliculas;
import Web.Modelo.ListaDePeliculas;
import Web.Modelo.Peliculas;

import com.opensymphony.xwork2.ActionSupport;


public class MovieAction extends ActionSupport {

	private static final long serialVersionUID = 9149826260758390091L;
	private Peliculas movie;
	private ListaDePeliculas<Peliculas> movieList;
	private int id;

	private ControladorPeliculas linkController;

	public MovieAction() {
		linkController = new ControladorPeliculas();
	}

	public String execute() {
		this.movieList = linkController.list();
		return SUCCESS;
	}

	public String add() {
		try {
			linkController.add(getMovie());
		} catch (Exception e) {
			e.printStackTrace();
		}
		this.movieList = linkController.list();
		return SUCCESS;
	}

	public String delete() {
		linkController.delete(getId());
		return SUCCESS;
	}
	
	public String show() {
		this.movieList = linkController.list();
		System.out.println("Showing id: "+id+" Size: "+movieList.size());
		movie = movieList.get(getId());
		return SUCCESS;
	}
	
	public String edit() {
		try {
			linkController.edit(getMovie());
		} catch (Exception e) {
			e.printStackTrace();
		}
		this.movieList = linkController.list();
		return SUCCESS;
	}

	public Peliculas getMovie() {
		return movie;
	}

	public ListaDePeliculas<Peliculas> getMovieList() {
		return movieList;
	}

	public void setMovie(Peliculas movie) {
		this.movie = movie;
	}

	public void setMovieList(ListaDePeliculas<Peliculas> movieList) {
		this.movieList = movieList;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
}
