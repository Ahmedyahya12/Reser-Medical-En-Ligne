package dao;

import java.util.List;

import entities.Medecin;
import entities.Utilisateur;

public interface MedecinDao {

	

	
	public Medecin AjouterMedicin(Medecin medecin);

	
	public List<Medecin> AfficherMedicns();
	
	public List<Medecin> ChercherMedecinParMc(String motCle);
	
	public Medecin getMedicin(int id);
	
	
	
	public void SupprimeMedicin(int id);
	
	public void ModifieMedecin(Medecin medecin);
	

	
}
