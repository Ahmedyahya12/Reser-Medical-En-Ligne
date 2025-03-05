package web;

import java.io.IOException;
import java.util.List;

import dao.UtilisateurDao;
import dao.UtilisateurDaoImpl;
import entities.Utilisateur;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet({ "*.user"})
public class ControleurUtilisateur extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UtilisateurDao metier;

    @Override
    public void init() throws ServletException {
        metier = new UtilisateurDaoImpl();
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         
    	String path = request.getServletPath();
    	
    	 if((path.equals("/register.user"))){
    		 
    		 String name=request.getParameter("name");
    		 String email=request.getParameter("email");
    		 String password =request.getParameter("password");
    		 
    		 Utilisateur u=new Utilisateur(name,email,password);
    		 
    		 u.setEmail(email);
    		 u.setNom(name);
    		 u.setMotDePasse(password);
    		 
              Utilisateur u1=metier.register(u);
    		 
    		 
    	    if(u1 != null) {
    	    	request.setAttribute("status", "success");
    	    	
    	    }else {
    	    	request.setAttribute("status", "faild");
        	    
    	    }
    	    
    	    request.getRequestDispatcher("Register.jsp").forward(request, response);
      		 
    		 
		 }else if((path.equals("/login.user"))) {
			 
			  HttpSession session = request.getSession();
			    String email = request.getParameter("email");
			    String password = request.getParameter("password");

			    // Affiche les valeurs récupérées des paramètres
			    System.out.println("Email: " + email);
			    System.out.println("Password: " + password);
			    
			    Utilisateur user = metier.login(email, password);

			    if (user != null) {
			        session.setAttribute("user", user);
			        System.out.println("User connecté: " + user.getNom());
//			        response.sendRedirect("Admin/index.jsp?name="+ user.getNom() +"&status=succes");
			        response.sendRedirect("Admin/index.jsp");
//			        respone("Admin/index.html").forward(request, response);
			    } else {
			        System.out.println("Échec de la connexion.");
			        request.setAttribute("status", "failed");
			        request.getRequestDispatcher("login.jsp").forward(request, response); // Rediriger vers la page de login avec le message d'erreur
			    }
    		
		 }else if((path.equals("/logout.user")) && request.getMethod().equals("GET")){
			 HttpSession session = request.getSession(); // Ne crée pas de nouvelle session
			  
			 session.invalidate(); // Détruit la session si elle existe
			    
			    
			  response.sendRedirect(request.getContextPath() +"/login.jsp");
		 }else  if (path.equals("/Admin/user_list.user") && request.getMethod().equals("GET")) {
		 
		        
		       List<Utilisateur> users= metier.AfficherUtilisateurs();
		       
		       UserModel model =new UserModel();
		       
		        model.setUsers(users);
		       
		      	request.setAttribute("model", model);
			 
			    request.getRequestDispatcher("users-list.jsp").forward(request, response);
				     
		}else if (path.equals("/Admin/chercher.user") && request.getMethod().equals("GET")) {
			  
			   String motCle=request.getParameter("motCle");
			   
             
			   UserModel model =new UserModel();
		       model.setMotCle(motCle);
	         
		       List<Utilisateur> users= metier.CherCherUtlisParMc("%" + motCle + "%");
		       
		       model.setUsers(users);
		       
		      	request.setAttribute("model", model);
			 
			    request.getRequestDispatcher("users-list.jsp").forward(request, response);
				   


		}else if (path.equals("/Admin/modifier.user") && request.getMethod().equals("GET")) {
			  
			   int id=Integer.parseInt(request.getParameter("id"));
			   
			   Utilisateur user=metier.getUser(id);
			   
			   user.setId(id);
			   
			   request.setAttribute("user", user);
               
			  
			    request.getRequestDispatcher("user-update.jsp").forward(request, response);
				   


		}else  if (path.equals("/Admin/SaveUser.user") ) {
			  
			   int id=Integer.parseInt(request.getParameter("id"));
			   String nom=request.getParameter("nomComplet");
			   String email=request.getParameter("email");
			   String motPass=request.getParameter("motsPass");
			   String role=request.getParameter("role");
			  
			   
			   Utilisateur user=new Utilisateur(id,nom,email,motPass,role);
			   
			   
               metier.ModifieUtilsateur(user);
			   
               
			    
			    response.sendRedirect("user_list.user");
				   


		}else if (path.equals("/Admin/user-add.user") ) {
				  
				  
				   String nom=request.getParameter("nomComplet");
				   String email=request.getParameter("email");
				   String motPass=request.getParameter("motsPass");
				   String role=request.getParameter("role");
				   
				   
				   Utilisateur user=new Utilisateur(nom,email,motPass,role);
				   
				   
	               metier.AjouterUtilisateur(user);
				   
	              
				   response.sendRedirect("user_list.user");
					   


			}else if (path.equals("/Admin/supprime.user") ) {
				  
				   int id=Integer.parseInt(request.getParameter("id"));
				 
				   
				   
	               metier.SupprimeUtilisateur(id);
				   
	               
				    
				    response.sendRedirect("user_list.user");
					   


			}
    	 
    
    	
    }
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	doPost(req, resp);
    }
    
  
}
