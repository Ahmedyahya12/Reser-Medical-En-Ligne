package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import entities.Medecin;
import entities.Reservation;
import entities.Utilisateur;

public class ReservationDaoImpl implements ReservationDao {

	
	@Override
	public Reservation AjouterRes(Reservation reserv) {
	    Connection conn = SingletonConnection.getConnection();
	    
	    String sql = "INSERT INTO `reservation` (`utilisateur_id`, `medecin_id`, `date_reservation`, `statut`, `message`) VALUES (?, ?, ?, ?, ?)";

	    try {
	        PreparedStatement ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
	        
	        // Utilisation des getters du paramètre reserv pour insérer les données
	        ps.setInt(1, reserv.getUtilisateurId()); 
	        ps.setInt(2, reserv.getMedecinId()); 
	        ps.setTimestamp(3, new Timestamp(reserv.getDateReservation().getTime())); 
	        ps.setString(4, reserv.getStatut()); 
	        ps.setString(5, reserv.getMessage());

	        // Exécution de la requête d'insertion
	        ps.executeUpdate();
	        
	        PreparedStatement ps1 = conn.prepareStatement("SELECT MAX(id) as maxid,date_creation from reservation");
	        // Récupération de l'ID généré
	        ResultSet rs = ps1.executeQuery();
	        
	        if (rs.next()) {
	        	
	            reserv.setId(rs.getInt("maxid"));
	            reserv.setDateCreation(rs.getDate("date_creation"));
	            
	        }
	       

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return reserv; // Retourner l'objet reserv inséré
	}

	@Override
	public List<Reservation> AfficherReser() {
	    List<Reservation> reservations = new ArrayList<Reservation>();

	    // Obtention de la connexion à la base de données
	    Connection conn = SingletonConnection.getConnection();

	    // Requête SQL pour récupérer les informations des réservations
	    String sql = "SELECT \r\n"
	            + "    reservation.id,\r\n"
	            + "    reservation.statut,\r\n" 
	            + "    utilisateur.nom AS nom_utilisateur,\r\n"
	            + "    utilisateur.email AS email_utilisateur,\r\n"
	            + "    medecin.name AS nom_medecin,\r\n"
	            + "    reservation.date_reservation,\r\n"
	            + "    reservation.message,\r\n"
	            + "    reservation.date_creation\r\n"
	            + "FROM reservation\r\n"
	            + "JOIN utilisateur ON reservation.utilisateur_id = utilisateur.id\r\n"
	            + "JOIN medecin ON reservation.medecin_id = medecin.id\r\n"
	            + "ORDER BY reservation.date_creation DESC;";



	    try {
	        // Préparation de la requête
	        PreparedStatement ps = conn.prepareStatement(sql);

	        // Exécution de la requête
	        ResultSet rs = ps.executeQuery();

	        // Parcours du résultat de la requête
	        while (rs.next()) {
	            // Création d'un objet Reservation
	            Reservation reservation = new Reservation();

	            // Récupérer les informations de la réservation
	            reservation.setId(rs.getInt("id"));
	            reservation.setStatut(rs.getString("statut"));
	            reservation.setDateReservation(rs.getDate("date_reservation"));
	            reservation.setStatut(rs.getString("statut"));
	            reservation.setMessage(rs.getString("message"));
	            reservation.setDateCreation(rs.getDate("date_creation"));

	             Utilisateur utilisateur = new Utilisateur();
	            
	            utilisateur.setNom(rs.getString("nom_utilisateur"));
	            utilisateur.setEmail(rs.getString("email_utilisateur"));
                
	            // Associer l'utilisateur à la réservation
	            reservation.setUtilisateur(utilisateur);

	            // Création d'un objet Medecin et ajout des informations du médecin
	            Medecin medecin = new Medecin();
	            medecin.setName(rs.getString("nom_medecin"));
                
	            // Associer le médecin à la réservation
	            reservation.setMedecin(medecin);

	            // Ajouter la réservation à la liste
	            reservations.add(reservation);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return reservations;
	}

	@Override
	public List<Reservation> ChercherReservationParMc(String motCle) {
		// TODO Auto-generated method stub
		return null;
	}

	
	@Override
	public Reservation getReserv(int id) {
	    Connection conn = SingletonConnection.getConnection();
	    Reservation reserv = null;
	    String sql = "SELECT * FROM reservation WHERE id = ?";
	    
	    try (PreparedStatement ps = conn.prepareStatement(sql)) {
	        ps.setInt(1, id);
	        try (ResultSet rs = ps.executeQuery()) {
	            if (rs.next()) {
	                reserv = new Reservation();
	                reserv.setId(rs.getInt("id"));
	                reserv.setStatut(rs.getString("statut"));
	                reserv.setDateReservation(rs.getDate("date_reservation"));
	                reserv.setMessage(rs.getString("message"));
	                reserv.setDateCreation(rs.getTimestamp("date_creation"));
	                
	                // Récupération des informations de l'utilisateur
	                Utilisateur user = new Utilisateur();
	                user.setId(rs.getInt("utilisateur_id"));
	                
	                reserv.setUtilisateur(user);
	                
	                // Récupération des informations du médecin
	                Medecin medecin = new Medecin();
	                medecin.setId(rs.getInt("medecin_id"));
	   
	                reserv.setMedecin(medecin);
	            }
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return reserv;
	}

	@Override
	public void SupprimeReser(int id) {
		 Connection conn=SingletonConnection.getConnection();
			
			String sql="DELETE FROM `reservation` WHERE `reservation`.`id` = ?";
					
			
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
	public void ModifieReservation(Reservation reservation) {
	    Connection conn = SingletonConnection.getConnection();

	    // Requête SQL pour mettre à jour la réservation
	    String sql = "UPDATE reservation SET utilisateur_id = ?, medecin_id = ?, date_reservation = ?, statut = ?, message = ? WHERE id = ?";

	    try (PreparedStatement ps = conn.prepareStatement(sql)) {
	        // Définition des paramètres de la requête
	        ps.setInt(1, reservation.getUtilisateurId()); // ID de l'utilisateur (patient)
	        ps.setInt(2, reservation.getMedecinId()); // ID du médecin
	        ps.setTimestamp(3, new Timestamp(reservation.getDateReservation().getTime())); // Date de réservation
	        ps.setString(4, reservation.getStatut()); // Statut de la réservation
	        ps.setString(5, reservation.getMessage()); // Message associé à la réservation
	        ps.setInt(6, reservation.getId()); // ID de la réservation à mettre à jour
            
	        // Exécution de la mise à jour
	        ps.executeUpdate();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}

	public List<Reservation> AfficherReserv(int id) {
	    List<Reservation> reservations = new ArrayList<Reservation>();

	    // Obtention de la connexion à la base de données
	    Connection conn = SingletonConnection.getConnection();

	    // Requête SQL pour récupérer les informations des réservations
	    String sql = "SELECT \r\n"
	            + "    reservation.id,\r\n"
	            + "    reservation.statut,\r\n"
	            + "    utilisateur.nom AS nom_utilisateur,\r\n"
	            + "    utilisateur.email AS email_utilisateur,\r\n"
	            + "    medecin.name AS nom_medecin,\r\n"
	            + "    reservation.date_reservation,\r\n"
	            + "    reservation.message,\r\n"
	            + "    reservation.date_creation\r\n"
	            + "FROM reservation\r\n"
	            + "JOIN utilisateur ON reservation.utilisateur_id = utilisateur.id\r\n"
	            + "JOIN medecin ON reservation.medecin_id = medecin.id\r\n"
	            + "WHERE reservation.utilisateur_id = ?\r\n"
	            + "ORDER BY reservation.date_creation DESC;";

	    try {
	        // Préparation de la requête
	        PreparedStatement ps = conn.prepareStatement(sql);

	        // Définir la valeur du paramètre `?`
	        ps.setInt(1, id);  // id est la valeur que vous voulez passer

	        // Exécution de la requête
	        ResultSet rs = ps.executeQuery();

	        // Parcours du résultat de la requête
	        while (rs.next()) {
	            // Création d'un objet Reservation
	            Reservation reservation = new Reservation();

	            // Récupérer les informations de la réservation
	            reservation.setId(rs.getInt("id"));
	            reservation.setStatut(rs.getString("statut"));
	            reservation.setDateReservation(rs.getDate("date_reservation"));
	            reservation.setStatut(rs.getString("statut"));
	            reservation.setMessage(rs.getString("message"));
	            reservation.setDateCreation(rs.getDate("date_creation"));

	            Utilisateur utilisateur = new Utilisateur();
	            utilisateur.setNom(rs.getString("nom_utilisateur"));
	            utilisateur.setEmail(rs.getString("email_utilisateur"));

	            // Associer l'utilisateur à la réservation
	            reservation.setUtilisateur(utilisateur);

	            // Création d'un objet Medecin et ajout des informations du médecin
	            Medecin medecin = new Medecin();
	            medecin.setName(rs.getString("nom_medecin"));

	            // Associer le médecin à la réservation
	            reservation.setMedecin(medecin);

	            // Ajouter la réservation à la liste
	            reservations.add(reservation);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return reservations;
	}


}
