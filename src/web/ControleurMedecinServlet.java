package web;

import java.io.IOException;
import java.util.List;

import dao.MedecinDao;
import dao.MedecinDaoImpl;
import entities.Medecin;
import entities.Utilisateur;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({"*.medicin"}) 
public class ControleurMedecinServlet extends HttpServlet {
	
	MedecinDao metier;
	
	@Override
	public void init() throws ServletException {
		 metier=new MedecinDaoImpl();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String  path=request.getServletPath();
		
		if(path.equals("/Admin/doctors-list.medicin") && request.getMethod().equals("GET")){
			 
			MedicinModel model=new MedicinModel();
			
			
			
			List<Medecin> medicins=metier.AfficherMedicns();
			
			model.setMedicins(medicins);
			
			request.setAttribute("model", model);
			
			request.getRequestDispatcher("doctors-list.jsp").forward(request, response);
			
		}else if(path.equals("/Admin/modifier.medicin") && request.getMethod().equals("GET")){
			 
			int id=Integer.parseInt(request.getParameter("id"));
			
			Medecin medecin= metier.getMedicin(id);
		    
		
			request.setAttribute("medecin", medecin);
			
		
			
			request.getRequestDispatcher("doctor-update.jsp").forward(request, response);
			
		}else if(path.equals("/Admin/SaveMedecin.medicin")){
			 
			   int id=Integer.parseInt(request.getParameter("id"));
			
			
			    String nom = request.getParameter("nom");
	            String specialite = request.getParameter("specialite");
	            String adresse = request.getParameter("adresse");
	            Double consultation =Double.parseDouble( request.getParameter("consultation"));
	            String tempsAttente = request.getParameter("tempsAttente");
	            String heuresTravail = request.getParameter("heuresTravail");
	            String seanceTelephonique = request.getParameter("seanceTelephonique");
	            
	            Medecin medecin = new Medecin(id,nom,specialite,adresse,consultation, tempsAttente, heuresTravail,seanceTelephonique);
	        		
      	            
	             metier.ModifieMedecin(medecin);
		    			
		        response.sendRedirect("doctors-list.medicin");
			
			
		}else  if(path.equals("/Admin/doctor-add.medicin") && request.getMethod().equals("POST")){
			 

			
			
			    String nom = request.getParameter("nom");
	            String specialite = request.getParameter("specialite");
	            String adresse = request.getParameter("adresse");
	            Double consultation =Double.parseDouble( request.getParameter("consultation"));
	            String tempsAttente = request.getParameter("tempsAttente");
	            String heuresTravail = request.getParameter("heuresTravail");
	            String seanceTelephonique = request.getParameter("seanceTelephonique");
	            
	            Medecin medecin = new Medecin(nom,specialite,adresse,consultation, tempsAttente, heuresTravail,seanceTelephonique);
	        		
   	            
	             metier.AjouterMedicin(medecin);
		    			
	             
		        response.sendRedirect("doctors-list.medicin");
		}else if(path.equals("/Admin/supprime.medicin") && request.getMethod().equals("GET")){
				 
				int id=Integer.parseInt(request.getParameter("id"));
				
				
				metier.SupprimeMedicin(id);
				
				response.sendRedirect("doctors-list.medicin");
				
				
				
			}else if(path.equals("/Admin/chercher.medicin") && request.getMethod().equals("GET")) {
				String motCle=request.getParameter("motCle");
				   
	             
				   MedicinModel model =new MedicinModel();
				   
			       model.setMotCle(motCle);
		         
			       List<Medecin> medecins= metier.ChercherMedecinParMc(motCle);
			       
			       model.setMedicins(medecins);
			       
			      	request.setAttribute("model", model);
				 
				    request.getRequestDispatcher("doctors-list.jsp").forward(request, response);
					   
			}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
