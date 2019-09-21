package entidades;

import java.util.ArrayList;
import java.util.Collection;

public class UsuarioRepositorio {
	
	
	
	
	
	
	private static ArrayList<Usuario> usuarios = new ArrayList<Usuario>();

	public UsuarioRepositorio() {
		
	}
	public UsuarioRepositorio(Collection<Usuario> usuarios) {
		UsuarioRepositorio.usuarios.addAll(usuarios);
	}
	
	public Usuario verificicarUsuario(String usuario) {
		Usuario result = null;
		
		for(Usuario user: UsuarioRepositorio.usuarios) {
			if(user.getSenha().equals(usuario)) {
				result = user;
				break;
			}
		}
		return result;
	}
	
	public void adicionar(Usuario usuario) {
		UsuarioRepositorio.usuarios.add(usuario);
	}
	
	
	
}
