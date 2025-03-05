package web;

import java.util.ArrayList;
import java.util.List;

import entities.Medecin;
import entities.Utilisateur;

public class MedicinModel {

	private String motCle;
	private List<Medecin> medicins =new ArrayList<Medecin>();
	public String getMotCle() {
		return motCle;
	}
	public void setMotCle(String motCle) {
		this.motCle = motCle;
	}
	public List<Medecin> getMedicins() {
		return medicins;
	}
	public void setMedicins(List<Medecin> medicins) {
		this.medicins = medicins;
	}
	
	
	
	
}
