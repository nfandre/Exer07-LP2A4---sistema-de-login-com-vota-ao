package entidades;

public class Candidato {
	int qtdVoto;
	
	public Candidato() {
		this.qtdVoto =0;
	}

	public int getQtdVoto() {
		return qtdVoto;
	}

	public void setQtdVoto(int qtdVoto) {
		this.qtdVoto = qtdVoto;
	}
	public void maisVoto() {
		this.qtdVoto +=1;
	}
	
}
