package entidades;

import java.util.ArrayList;
import java.util.Collection;

public class CandidatoRepositorio {
	private static ArrayList<Candidato> candidatos = new ArrayList<Candidato>();
	
	
	public CandidatoRepositorio() {
		Candidato cand1 = new Candidato();
		Candidato cand2  = new Candidato();
		Candidato cand3 = new Candidato();
		Candidato cand4  = new Candidato();
		this.adicionar(cand1);
		this.adicionar(cand2);
		this.adicionar(cand3);
		this.adicionar(cand4);
		
	}
	public CandidatoRepositorio( Collection<Candidato> candidatos) {
		CandidatoRepositorio.candidatos.addAll(candidatos);
	}
	public void adicionar(Candidato candidato) {
		CandidatoRepositorio.candidatos.add(candidato);
	}
	public static ArrayList<Candidato> getCandidatos() {
		return candidatos;
	}
	public static void setCandidatos(ArrayList<Candidato> candidatos) {
		CandidatoRepositorio.candidatos = candidatos;
	}
	
	
}
