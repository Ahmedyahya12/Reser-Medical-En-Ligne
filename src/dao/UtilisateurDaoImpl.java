package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entities.Utilisateur;
import jakarta.servlet.http.HttpSession;

public class UtilisateurDaoImpl implements UtilisateurDao {

	@Override
	public Utilisateur register(Utilisateur u) {
		 
		Connection conn=SingletonConnection.getConnection();
		
		String sql="INSERT INTO Utilisateur (nom, email, mot_de_passe) VALUES (?, ?, ?);";
				
		
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ps.setString(1, u.getNom());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getMotDePasse());
			
			ps.executeUpdate();
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return u;
	}

	@Override
	public Utilisateur login(String Email,String password) {
		  Utilisateur user=null;
		 
		 Connection conn=SingletonConnection.getConnection();
		 
		 String sql="select * from Utilisateur where email=? and mot_de_passe=?";
		 
		 try {
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ps.setString(1,Email);
			ps.setString(2, password);
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next()) {
				 user = new Utilisateur(); // Création d'un objet utilisateur avec les données récupérées
		         user.setNom(rs.getString("nom"));
		         user.setEmail(rs.getString("email"));
		         user.setMotDePasse(rs.getString("mot_de_passe"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		
		return user;
	}
	
	
	@Override
	public Utilisateur AjouterUtilisateur(Utilisateur u) {
       Connection conn=SingletonConnection.getConnection();
		
		String sql="INSERT INTO Utilisateur (nom, email, mot_de_passe,role) VALUES (?, ?, ?,?)";
				
		
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ps.setString(1, u.getNom());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getMotDePasse());
			ps.setString(4, u.getRole());
			
			ps.executeUpdate();
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return u;
	}

	@Override
	public List<Utilisateur> AfficherUtilisateurs() {
	    List<Utilisateur> users =new ArrayList<Utilisateur>();
	    
	    Connection conn=SingletonConnection.getConnection();
	    
	    String sql ="SELECT * FROM `utilisateur`";
	    
	    try {
			PreparedStatement ps=conn.prepareStatement(sql);
			
		  ResultSet rs=ps.executeQuery();
		  
		  while(rs.next()) {
			   Utilisateur u= new Utilisateur();
			   
			   u.setNom(rs.getString("nom"));
			   u.setEmail(rs.getString("email"));
			   u.setRole(rs.getString("role"));
			   u.setMotDePasse(rs.getString("mot_de_passe"));
			   u.setDate_creation(rs.getDate("date_creation"));
			   u.setId(rs.getInt("id"));
			   users.add(u);
			   
					   
		  }
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return users;
	}

	@Override
	public List<Utilisateur> CherCherUtlisParMc(String motCle) {
List<Utilisateur> users =new ArrayList<Utilisateur>();
	    
	    Connection conn=SingletonConnection.getConnection();
	    
	    String sql ="SELECT * FROM utilisateur WHERE nom LIKE ? OR email LIKE ? OR role LIKE ? ";
	    		 
	    
	    try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, motCle);
			ps.setString(2, motCle);
			ps.setString(3, motCle);
			
		    ResultSet rs=ps.executeQuery();
		    
		  while(rs.next()) {
			   Utilisateur u= new Utilisateur();
			   
			   u.setNom(rs.getString("nom"));
			   u.setEmail(rs.getString("email"));
			   u.setRole(rs.getString("role"));
			   u.setMotDePasse(rs.getString("mot_de_passe"));
			   u.setDate_creation(rs.getDate("date_creation"));
			   u.setId(rs.getInt("id"));
			   users.add(u);
			   
					   
		  }
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return users;
	}

	@Override
	public void ModifieUtilsateur(Utilisateur u) {
		
		
       Connection conn=SingletonConnection.getConnection();
		
		String sql="UPDATE `utilisateur` SET `nom` = ?, `email` = ? , `mot_de_passe` = ?, `role` = ?  WHERE `utilisateur`.`id` = ? ";
				
		
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ps.setString(1, u.getNom());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getMotDePasse());
			
			ps.setString(4, u.getRole());
			ps.setInt(5, u.getId());
		    
			
			ps.executeUpdate();
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	@Override
	public Utilisateur getUser(int id) {
		
		Connection conn=SingletonConnection.getConnection();
		
		Utilisateur user = null;
		
		String sql="select * from Utilisateur where id=?";
		 
		 try {
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ps.setInt(1,id);
		
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next()) {
				 user = new Utilisateur(); // Création d'un objet utilisateur avec les données récupérées
		         user.setNom(rs.getString("nom"));
		         user.setEmail(rs.getString("email"));
		         user.setMotDePasse(rs.getString("mot_de_passe"));
		         user.setRole(rs.getString("role"));
		         
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
	}

	@Override
	public void SupprimeUtilisateur(int id) {
		
		
		 Connection conn=SingletonConnection.getConnection();
			
			String sql="DELETE FROM `utilisateur` WHERE `utilisateur`.`id` = ?";
					
			
			try {
				PreparedStatement ps=conn.prepareStatement(sql);
				
				ps.setInt(1,id);
				
				
				
				ps.executeUpdate();
				
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		
		
	}

	

}
