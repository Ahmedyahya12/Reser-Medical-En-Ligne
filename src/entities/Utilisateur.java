package entities;


import java.io.Serializable;
import java.util.Date;

public class Utilisateur implements Serializable {
    private int id;  // Ajout d'un identifiant unique
    private String nom;
    private String email;
    private String motDePasse;
    private String role;
    private Date date_creation;
    
    // Constructeur par défaut (nécessaire pour un JavaBean)
    public Utilisateur() {
    }

     
    public Utilisateur(String nom, String email, String motDePasse) {
		super();
		this.nom = nom;
		this.email = email;
		this.motDePasse = motDePasse;
	}

    

	public Utilisateur(int id, String nom, String email, String motDePasse, String role) {
		super();
		this.id = id;
		this.nom = nom;
		this.email = email;
		this.motDePasse = motDePasse;
		this.role = role;
	}


	// Constructeur avec paramètres
    public Utilisateur(String nom, String email, String motDePasse, String role) {
        this.nom = nom;
        this.email = email;
        this.motDePasse = motDePasse;
        this.role = role;
    }

    
    // Getters et Setters
    
    
    
    public int getId() {
        return id;
    }

    public Date getDate_creation() {
		return date_creation;
	}


	public void setDate_creation(Date date_creation) {
		this.date_creation = date_creation;
	}


	public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMotDePasse() {
        return motDePasse;
    }

    public void setMotDePasse(String motDePasse) {
        this.motDePasse = motDePasse;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    // Méthode toString() pour affichage
    @Override
    public String toString() {
        return "Utilisateur{" +
                "id=" + id +
                ", nom='" + nom + '\'' +
                ", email='" + email + '\'' +
                ", role='" + role + '\'' +
                '}';
    }
}
