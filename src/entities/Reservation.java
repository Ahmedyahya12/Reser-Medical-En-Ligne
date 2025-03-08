package entities;

import java.util.Date;

public class Reservation {
    private int id;
    private int utilisateurId;
    private int medecinId;
    private Date dateReservation;
    private String statut;
    private Date dateCreation;
    private String message;
    
    // Nouveaux attributs Utilisateur et Medecin
    private Utilisateur utilisateur;
    private Medecin medecin;
   
    public Reservation(int id, int utilisateurId, int medecinId, Date dateReservation, String statut, String message) {
		super();
		this.id = id;
		this.utilisateurId = utilisateurId;
		this.medecinId = medecinId;
		this.dateReservation = dateReservation;
		this.statut = statut;
		this.message = message;
	}

	public Utilisateur getUtilisateur() {
		return utilisateur;
	}

	public void setUtilisateur(Utilisateur utilisateur) {
		this.utilisateur = utilisateur;
	}

	public Medecin getMedecin() {
		return medecin;
	}

	public void setMedecin(Medecin medecin) {
		this.medecin = medecin;
	}

	// Constructeur par défaut
    public Reservation() {}

    // Getters et Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUtilisateurId() {
        return utilisateurId;
    }

    public void setUtilisateurId(int utilisateurId) {
        this.utilisateurId = utilisateurId;
    }

    public int getMedecinId() {
        return medecinId;
    }

    public void setMedecinId(int medecinId) {
        this.medecinId = medecinId;
    }

    public Date getDateReservation() {
        return dateReservation;
    }

    public void setDateReservation(Date dateReservation) {
        this.dateReservation = dateReservation;
    }

    public String getStatut() {
        return statut;
    }

    public void setStatut(String statut) {
        this.statut = statut;
    }

    public Date getDateCreation() {
        return dateCreation;
    }

    public void setDateCreation(Date dateCreation) {
        this.dateCreation = dateCreation;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
