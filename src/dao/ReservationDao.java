package dao;

import java.util.List;

import entities.Reservation;

public interface ReservationDao {
	

	public Reservation AjouterRes(Reservation reserv);
	
	public List<Reservation> AfficherReser();
	public List<Reservation> AfficherReserv(int id);
	public List<Reservation> ChercherReservationParMc(String motCle);
	
	public Reservation getReserv(int id);
	
	
	
	public void SupprimeReser(int id);
	
	public void ModifieReservation(Reservation reservation);

}
