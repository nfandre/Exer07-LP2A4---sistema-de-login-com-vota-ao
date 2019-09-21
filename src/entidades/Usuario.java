package entidades;

public class Usuario {
	private String usuario;
	private String senha;
	
	
	
	
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	
	@Override
	public boolean equals(Object obj) {
		boolean resultado = false;
		
		if(obj.getClass() == this.getClass()) {
			Usuario outroUser = (Usuario)obj;
			
			resultado = this.getSenha().equals(outroUser.senha);
			
			resultado = resultado && this.getUsuario().equals(outroUser.getUsuario());
		}
		return resultado;
	}
	
}

