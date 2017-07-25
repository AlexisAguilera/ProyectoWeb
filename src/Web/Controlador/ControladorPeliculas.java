package Web.Controlador;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;


import Web.Modelo.ListaDePeliculas;
import Web.Modelo.Peliculas;


public class ControladorPeliculas {
	
	private ListaDePeliculas<Peliculas> ListaPel;
	
	
	public Peliculas add(Peliculas movie) {

		//Recupero la lista guardada
		ListaPel = list();
		
		//Si no habia lista guardada, la creo.
		if(ListaPel == null)
			ListaPel = new ListaDePeliculas<Peliculas>();
		
		//Asigno un indice a la pelicula
		movie.setId(ListaPel.size());
		//Agrego la pelicula
		ListaPel.add(movie);
		
		save();
		
		return movie;
	}
	
	public Peliculas edit(Peliculas movie) {

		//Recupero la lista guardada
		ListaPel = list();
		
		//Agrego la pelicula
		System.out.println("Trying to edit id: "+movie.getId());
		
		ListaPel.update(movie.getId(), movie);
		
		save();
		
		return movie;
	}
	
	public Peliculas delete(int id) {
		//Recupero la lista guardada
		ListaPel = list();
		
		System.out.println("Trying to delete id: "+id);
		
		Peliculas p = ListaPel.remove(id);
		
		save();
		
		return p;
	}
	

	public ListaDePeliculas<Peliculas> list() {
		File fichero = new File( "peliculas.dat" );
		ListaDePeliculas<Peliculas> aux = null;
		if(fichero.exists()) {
			try {
				FileInputStream f = new FileInputStream(fichero);
				ObjectInputStream ois = new ObjectInputStream(f);
				aux = (ListaDePeliculas<Peliculas>) ois.readObject();
				ois.close();
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("File not found");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("IO error");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("Class not found");
			}
		}

		return aux;
	}
	
	public void save() {
		//Guardo la lista como archivo
		ObjectOutputStream oos;
		try {
			oos = new ObjectOutputStream(new FileOutputStream("peliculas.dat"));
			oos.writeObject(ListaPel);
			oos.flush();
			oos.close();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("File not found");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("IO Error");
		}
	}


}
