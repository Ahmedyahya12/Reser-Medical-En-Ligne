package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entities.Medecin;
import entities.Utilisateur;

public class MedecinDaoImpl  implements MedecinDao{
	
	@Override
	public List<Medecin> ChercherMedecinParMc(String motCle) {
	    List<Medecin> medecins = new ArrayList<Medecin>();
	    
	    Connection conn = SingletonConnection.getConnection();
	    
	    String sql = "SELECT * FROM medecin WHERE name LIKE ? OR consultation LIKE ? OR specialite LIKE ?";
	    
	    try {
	        PreparedStatement ps = conn.prepareStatement(sql);
	        ps.setString(1, "%" + motCle + "%");  // Utilisation des jokers % pour la recherche partielle
	        ps.setString(2, "%" + motCle + "%");
	        ps.setString(3, "%" + motCle + "%");
	        
	        ResultSet rs = ps.executeQuery();
	        
	        while (rs.next()) {
	            Medecin medecin = new Medecin();
	            
	            // Remplir l'objet Medecin avec les données récupérées
	            medecin.setId(rs.getInt("id"));
	            medecin.setName(rs.getString("name"));
	            medecin.setSpecialite(rs.getString("specialite"));
	            medecin.setAdresse(rs.getString("adresse"));
	            medecin.setConsultation(rs.getDouble("consultation"));
	            medecin.setTempsAttente(rs.getString("tempsAttente"));
	            medecin.setHeuresTravail(rs.getString("heuresTravail"));
	            medecin.setSeanceTelephonique(rs.getString("seanceTelephonique"));
	            
	            // Ajouter le Medecin à la liste
	            medecins.add(medecin);
	        }
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    
	    return medecins;
	}


	@Override
	public Medecin AjouterMedicin(Medecin medecin) {
	    Connection conn = SingletonConnection.getConnection();
	    
	    String sql = "INSERT INTO `medecin` ( `name`, `specialite`, `adresse`, `consultation`, `tempsAttente`, `heuresTravail`, `seanceTelephonique`) VALUES (?, ?, ?, ?, ?, ?, ?);";
	    
	    try {
	        PreparedStatement ps = conn.prepareStatement(sql);
	        
	        // Utilisation des getters du paramètre medecin pour insérer les données
	        ps.setString(1, medecin.getName()); // Nom
	        ps.setString(2, medecin.getSpecialite()); // Spécialité
	        ps.setString(3, medecin.getAdresse()); // Adresse
	        ps.setDouble(4, medecin.getConsultation()); 
	        ps.setString(5, medecin.getTempsAttente()); // Temps d'attente
	        ps.setString(6, medecin.getHeuresTravail()); // Heures de travail
	        ps.setString(7, medecin.getSeanceTelephonique()); // Séance téléphonique
	        
	        // Exécution de la requête d'insertion
	        ps.executeUpdate();
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return medecin; // Retourner l'objet medecin inséré
	}


	@Override
	public List<Medecin> AfficherMedicns() {
	    List<Medecin> medicins = new ArrayList<>();

	    Connection conn = SingletonConnection.getConnection();
	    String sql = "SELECT * FROM medecin"; 

	    try {
	        PreparedStatement ps = conn.prepareStatement(sql);
	        ResultSet rs = ps.executeQuery();

	        while (rs.next()) {
	            Medecin medicin = new Medecin();
	            
	            medicin.setId(rs.getInt("id"));
	            medicin.setName(rs.getString("name"));
	            medicin.setSpecialite(rs.getString("specialite"));
	            medicin.setAdresse(rs.getString("adresse"));
	            medicin.setConsultation(rs.getDouble("consultation"));
	            medicin.setTempsAttente(rs.getString("tempsAttente"));
	            medicin.setHeuresTravail(rs.getString("heuresTravail"));
	            medicin.setSeanceTelephonique(rs.getString("seanceTelephonique"));
	           

	            medicins.add(medicin);
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    
	    return medicins;
	}



	@Override
	public Medecin getMedicin(int id) {
		

		Connection conn=SingletonConnection.getConnection();
		
		Medecin medicin = null;
		
		String sql="select * from medecin where id=?";
		 
		 try {
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ps.setInt(1,id);
		
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next()) {
				    medicin = new Medecin(); // Création d'un objet utilisateur avec les données récupérées
				    medicin.setName(rs.getString("name"));
		            medicin.setSpecialite(rs.getString("specialite"));
		            medicin.setAdresse(rs.getString("adresse"));
		            medicin.setConsultation(rs.getDouble("consultation"));
		            medicin.setTempsAttente(rs.getString("tempsAttente"));
		            medicin.setHeuresTravail(rs.getString("heuresTravail"));
		            medicin.setSeanceTelephonique(rs.getString("seanceTelephonique"));
		            medicin.setId(rs.getInt(id));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		return medicin;
	}

	

	@Override
	public void SupprimeMedicin(int id) {

		 Connection conn=SingletonConnection.getConnection();
			
			String sql="DELETE FROM `medecin` WHERE `medecin`.`id` = ?";
					
			
			try {
				PreparedStatement ps=conn.prepareStatement(sql);
				
				ps.setInt(1,id);
				
				
				
				ps.executeUpdate();
				
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		
		
	}

	
	@Override
	public void ModifieMedecin(Medecin medecin) {
	    Connection conn = SingletonConnection.getConnection();
	    
	    String sql = "UPDATE medecin SET name= ?, specialite = ?, adresse = ?, consultation = ?, tempsAttente = ?, heuresTravail = ?, seanceTelephonique = ? WHERE id = ?";

	    try (PreparedStatement ps = conn.prepareStatement(sql)) {

	        ps.setString(1, medecin.getName());
	        ps.setString(2, medecin.getSpecialite());
	        ps.setString(3, medecin.getAdresse());
	        ps.setDouble(4, medecin.getConsultation());
	        ps.setString(5, medecin.getTempsAttente());
	        ps.setString(6, medecin.getHeuresTravail());
	        ps.setString(7, medecin.getSeanceTelephonique());
	        ps.setInt(8, medecin.getId());

	        ps.executeUpdate();

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}


}
