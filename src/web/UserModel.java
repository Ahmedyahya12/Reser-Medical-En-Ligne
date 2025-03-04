package web;

import java.util.ArrayList;
import java.util.List;

import entities.Utilisateur;

public class UserModel {

	private String motCle;
	private List<Utilisateur> users =new ArrayList<Utilisateur>();
	public String getMotCle() {
		return motCle;
	}
	public void setMotCle(String motCle) {
		this.motCle = motCle;
	}
	public List<Utilisateur> getUsers() {
		return users;
	}
	public void setUsers(List<Utilisateur> users) {
		this.users = users;
	}
	
	
	
}
