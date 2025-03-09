-- Création de la base de données
CREATE DATABASE med_reservation;

-- Utilisation de la base de données créée
USE med_reservation1;

-- Création de la table Utilisateur
CREATE TABLE Utilisateur (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100),
    email VARCHAR(100),
    mot_de_passe VARCHAR(255),
    role ENUM('patient', 'medecin', 'admin')
);

-- Insertion des utilisateurs
INSERT INTO Utilisateur (nom, email, mot_de_passe, role)
VALUES ('Ahmed Yahya', 'ahmedyahya@example.com', 'hashed_password_1', 'patient'),
       ('Dr. Mohamed Ali', 'mohamedali@example.com', 'hashed_password_2', 'medecin'),
       ('Fatimah Zahra', 'fatimahzahra@example.com', 'hashed_password_3', 'admin');

-- Création de la table Medecin
CREATE TABLE Medecin (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    specialite VARCHAR(100),
    adresse VARCHAR(255),
    consultation DECIMAL(10,2),
    tempsAttente VARCHAR(50),
    heuresTravail VARCHAR(50),
    seanceTelephonique DECIMAL(10,2)
);

-- Insertion des médecins
INSERT INTO Medecin (name, specialite, adresse, consultation, tempsAttente, heuresTravail, seanceTelephonique)
VALUES ('Dr. Mohamed Ali', 'Cardiologue', '123 Rue des Lilas, Paris', 150.0, '30 minutes', '9h00 - 17h00', 60.0),
       ('Dr. Amina Nasser', 'Dermatologue', '456 Rue des Acacias, Lyon', 100.0, '20 minutes', '10h00 - 18h00', 50.0),
       ('Dr. Khaled Samir', 'Pédiatre', '789 Rue de la Santé, Marseille', 120.0, '25 minutes', '8h30 - 16h30', 55.0);

-- Création de la table Reservation
CREATE TABLE Reservation (
    id INT AUTO_INCREMENT PRIMARY KEY,
    utilisateur_id INT,
    medecin_id INT,
    date_reservation DATETIME,
    statut ENUM('en attente', 'confirmée', 'annulée'),
    date_creation TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    message TEXT,
    FOREIGN KEY (utilisateur_id) REFERENCES Utilisateur(id),
    FOREIGN KEY (medecin_id) REFERENCES Medecin(id)
);

-- Insertion des réservations
INSERT INTO Reservation (utilisateur_id, medecin_id, date_reservation, statut, message)
VALUES (1, 1, '2025-03-01 11:45:05', 'en attente', 'Demande de consultation pour un contrôle de routine avec le Dr. Mohamed Ali.'),
       (2, 2, '2025-03-02 14:00:00', 'en attente', 'Consultation dermatologique pour un contrôle annuel avec Dr. Amina Nasser.'),
       (3, 3, '2025-03-03 09:30:00', 'en attente', 'Rendez-vous pédiatrique pour une consultation de routine avec Dr. Khaled Samir.'),
       (1, 3, '2025-03-04 10:00:00', 'en attente', 'Consultation pédiatrique pour mon enfant avec Dr. Khaled Samir.'),
       (2, 1, '2025-03-05 15:30:00', 'en attente', 'Consultation cardiologique pour un suivi de santé avec Dr. Mohamed Ali.');
