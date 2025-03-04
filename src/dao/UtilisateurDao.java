package dao;

import java.util.List;

import entities.Utilisateur;

public interface UtilisateurDao {
	
	public Utilisateur register(Utilisateur u);

	
	public Utilisateur AjouterUtilisateur(Utilisateur u);

	public Utilisateur login(String Email, String password);
	
	
	public List<Utilisateur> AfficherUtilisateurs();
	
	public List<Utilisateur> CherCherUtlisParMc(String motCle);
	
	public Utilisateur getUser(int id);
	
	public void ModifieUtilsateur(Utilisateur u);
	
	public void SupprimeUtilisateur(int id);
	
	
	
	

}
