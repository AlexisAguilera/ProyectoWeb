package Web.Modelo;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;


@SuppressWarnings("serial")
public class ListaDePeliculas<E> implements Serializable, Iterable<E> {
	
	protected E[] lista;
	protected int size;
	protected int capacidad;
	
	public ListaDePeliculas(){
		size=0;
		capacidad=20;
		lista= (E[]) new Object[capacidad];
	}
	
	public int size(){
		return size;
	}
	
	public void add(E e) {
		if(size == capacidad)
			extend();
		lista[size++] = e;
	}
	
	public void update(int i, E e) {
		lista[i] = e;
	}
	
	public E get(int id) {
		if(id < size){
			return lista[id];
		}
		return null;
	}
	
	public E remove(int id) {
		if(id < size){
			E tmp = lista[id];
			lista[id] = null;
			return tmp;
		}
		return null;
	}
	
	private void extend() {
		E[] old = lista;
		capacidad *= 2;
		lista = (E[]) new Object[capacidad];
		for(int i = 0; i<old.length; i++)
			lista[i] = old[i];
		
	}
	
	public Iterator iterator() {
		List<E> it = new ArrayList<E>();
		for(int i = 0; i<lista.length; i++)
			if(lista[i] != null)
				it.add(lista[i]);
		return it.iterator();
	}


}
