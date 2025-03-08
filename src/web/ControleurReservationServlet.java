package web;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

import dao.MedecinDao;
import dao.MedecinDaoImpl;
import dao.ReservationDao;
import dao.ReservationDaoImpl;
import dao.UtilisateurDao;
import dao.UtilisateurDaoImpl;
import entities.Medecin;
import entities.Reservation;
import entities.Utilisateur;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet({"*.res"})
public class ControleurReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	ReservationDao metier;
	MedecinDao metierMedc;
	UtilisateurDao metierUser;
	
	@Override
	public void init() throws ServletException {
		metier=new ReservationDaoImpl();
		
		metierMedc =new MedecinDaoImpl();
		metierUser =new UtilisateurDaoImpl();
	}
	
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path=request.getServletPath();
		
		if((path.equals("/Admin/form-add.res"))) {
			
		  List<Medecin> medecins= metierMedc.AffiAttrMedicns();
		  
		  request.setAttribute("medecins", medecins);
		  request.getRequestDispatcher("reservation-add.jsp").forward(request, response);
			
		}else if (path.equals("/Admin/rese-add.res") && request.getMethod().equals("POST") ) {
			  
			  // Récupérer les valeurs du formulaire
	        int medecinId =Integer.parseInt(request.getParameter("medecin")) ;
	        
	        String dateStr = request.getParameter("date_reservation");
	        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); // Format attendu
	        Date dateReservation = null;
			try {
				dateReservation = sdf.parse(dateStr);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        
	        String message = request.getParameter("message");
	        String status = request.getParameter("statut");
	        
			  
	        
	       HttpSession session= request.getSession(false);
	       
	       int user_id=0;
	       if(session !=null  && session.getAttribute("user") != null) {
	    	    Utilisateur user = (Utilisateur) session.getAttribute("user");
	    	    
	    	    user_id=user.getId();
	    	    
	       }
	       
	       Reservation reservation =new Reservation();
	       
	       reservation.setMedecinId(medecinId);
	       reservation.setDateReservation(dateReservation);
	       reservation.setUtilisateurId(user_id);
	       reservation.setMessage(message);
	       reservation.setStatut(status);
	       
	       Utilisateur user=metierUser.getUser(user_id);
	       
	       reservation.setUtilisateur(user);
	       
	       
	      Medecin medecin=metierMedc.getMedicin(medecinId);
	      
	       reservation.setMedecin(medecin);
	       
	       
	       
	        Reservation reserv = metier.AjouterRes(reservation);
	       
//	       System.out.println(reser.getStatut());
//	       System.out.print(reser.getMessage());
	       
          request.setAttribute("reservation", reserv);
	       
	       
          
//          response.sendRedirect("reserv-list.res");
          
          request.getRequestDispatcher("confirmation.jsp").forward(request, response);
			   
           

		}else if (path.equals("/Admin/reserv-list.res")){
			 
			List<Reservation> reservations=metier.AfficherReser();
			
			request.setAttribute("reservations", reservations);
	       
			
	        request.getRequestDispatcher("reservation-list.jsp").forward(request, response);
	       
	
         

		}if (path.equals("/reserv-list.res")){
			
			 HttpSession session= request.getSession(false);
		       
		       int user_id=0;
		       if(session !=null  && session.getAttribute("user") != null) {
		    	    Utilisateur user = (Utilisateur) session.getAttribute("user");
		    	    
		    	    user_id=user.getId();
		    	    
		       }
		       
		       
			
			List<Reservation> reservations =metier.AfficherReserv(user_id);
			
			
			request.setAttribute("reservations", reservations);
	       
			
	        request.getRequestDispatcher("reservation-list.jsp").forward(request, response);
	       
	
        

		}else if (path.equals("/Admin/modifier.res")) {
			 int id=Integer.parseInt(request.getParameter("id"));
			   
			   Reservation reservation=metier.getReserv(id);
			   
				
				  List<Medecin> medecins= metierMedc.AffiAttrMedicns();
				  
				  request.setAttribute("medecins", medecins);
			     
				List<Utilisateur> users= metierUser.AfficherUtilisateurs();
		          
		        
		        
			  
			   request.setAttribute("reservation", reservation);
               
			   request.setAttribute("users", users);
               
			   
	
				  
			  
			    request.getRequestDispatcher("reser-update.jsp").forward(request, response);
				   
		}else if (path.equals("/Admin/SaveRes.res") && request.getMethod().equals("POST")) {
			    int id=Integer.parseInt(request.getParameter("id"));
			    
			    int medecinId =Integer.parseInt(request.getParameter("medecin")) ;
			    int userId =Integer.parseInt(request.getParameter("patient")) ;
			    String statut=request.getParameter("statut");
			    String dateStr = request.getParameter("date_reservation");
		        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); // Format attendu
		        Date dateReservation = null;
				try {
					dateReservation = sdf.parse(dateStr);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
		        
		        String message = request.getParameter("message");
		        
			   Reservation reservation=new Reservation( id,  userId,  medecinId,  dateReservation,  statut,  message);
			   
			   
			  
			   metier.ModifieReservation(reservation);
			   
			   response.sendRedirect("reserv-list.res");
			   
				   
		}if (path.equals("/Admin/supprime.res") ) {
			  
			   int id=Integer.parseInt(request.getParameter("id"));
			 
			   
			 
                metier.SupprimeReser(id);
			   
            
			    
			    response.sendRedirect("reserv-list.res");
				   


		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
