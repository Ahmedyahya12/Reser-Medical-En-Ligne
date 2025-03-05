package entities;

public class Medecin {
    private int id;
    private String name;
    private String specialite;
    private String adresse;
    private double consultation;
    private String tempsAttente;
    private String heuresTravail;
    private String seanceTelephonique;
  

    // Constructeur par défaut
    public Medecin() {
    }

    // Constructeur avec paramètres
    public Medecin(int id, String name, String specialite, String adresse, double consultation, String tempsAttente, 
                   String heuresTravail, String seanceTelephonique) {
        this.id = id;
        this.name = name;
        this.specialite = specialite;
        this.adresse = adresse;
        this.consultation = consultation;
        this.tempsAttente = tempsAttente;
        this.heuresTravail = heuresTravail;
        this.seanceTelephonique = seanceTelephonique;
        
    }

    
    public Medecin(String name, String specialite, String adresse, double consultation, String tempsAttente,
			String heuresTravail, String seanceTelephonique) {
		super();
		this.name = name;
		this.specialite = specialite;
		this.adresse = adresse;
		this.consultation = consultation;
		this.tempsAttente = tempsAttente;
		this.heuresTravail = heuresTravail;
		this.seanceTelephonique = seanceTelephonique;
	}

	// Getters et Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSpecialite() {
        return specialite;
    }

    public void setSpecialite(String specialite) {
        this.specialite = specialite;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public double getConsultation() {
        return consultation;
    }

    public void setConsultation(double consultation) {
        this.consultation = consultation;
    }

    public String getTempsAttente() {
        return tempsAttente;
    }

    public void setTempsAttente(String tempsAttente) {
        this.tempsAttente = tempsAttente;
    }

    public String getHeuresTravail() {
        return heuresTravail;
    }

    public void setHeuresTravail(String heuresTravail) {
        this.heuresTravail = heuresTravail;
    }

  

  
  

    // Méthode pour afficher les informations du médecin
    @Override
    public String toString() {
        return "Medecin{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", specialitSELECT tempsAttente FROM medecin;\r\n"
                + "e='" + specialite + '\'' +
                ", adresse='" + adresse + '\'' +
                ", consultation=" + consultation +
                ", tempsAttente=" + tempsAttente +
                ", heuresTravail='" + heuresTravail + '\'' +
                ", seanceTelephonique=" + seanceTelephonique +
               
                '}';
    }

	public String getSeanceTelephonique() {
		return seanceTelephonique;
	}

	public void setSeanceTelephonique(String seanceTelephonique) {
		this.seanceTelephonique = seanceTelephonique;
	}
}
