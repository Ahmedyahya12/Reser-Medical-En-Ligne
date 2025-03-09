<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${empty sessionScope.user}">
    <!-- Si l'utilisateur n'est pas connecté, rediriger vers la page de connexion -->
    <c:redirect url="${request.getContextPath()}/login.jsp"/>
</c:if>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <title>Doc-Res</title>
    <meta name="description" content="" />
    <meta name="keywords" content="" />

    <!-- Remplacer les favicons -->
    <link href="assets/img/your-favicon.png" rel="icon" /> <!-- Remplacez "your-favicon.png" par le fichier de votre propre icÃ´ne -->
    <link href="assets/img/your-favicon.png" rel="apple-touch-icon" /> <!-- Remplacez "your-favicon.png" par le fichier de votre propre icÃ´ne -->

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com" rel="preconnect" />
    <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
      rel="stylesheet"
    />

    <!-- Vendor CSS Files -->
    <link
      href="assets/vendor/bootstrap/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link
      href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
      rel="stylesheet"
    />
    <link href="assets/vendor/aos/aos.css" rel="stylesheet" />
    <link
      href="assets/vendor/fontawesome-free/css/all.min.css"
      rel="stylesheet"
    />
    <link
      href="assets/vendor/glightbox/css/glightbox.min.css"
      rel="stylesheet"
    />
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet" />

    <!-- Main CSS File -->
    <link href="assets/css/main.css" rel="stylesheet" />
  </head>

  <body class="index-page">
  
    <%@include file="components/nav.jsp" %>
    <main class="main">
      <!-- Hero Section -->
      <section id="hero" class="hero section light-background" style="padding-top: 1px;">
        
               <!-- Appointment Section -->
      <section id="appointment" class="appointment section">
        <!-- Section Title -->
        <div class="container section-title" data-aos="fade-up">
          <h2>RÃ©servez votre rendez-vous mÃ©dical</h2>
          <p>
            Trouvez le mÃ©decin de votre choix et rÃ©servez facilement votre
            consultation en quelques Ã©tapes.
          </p>
        </div>
        <!-- End Section Title -->

        <div class="container" data-aos="fade-up" data-aos-delay="100">
                      <!-- Section d'informations -->
                      <div class="alert alert-info" role="alert">
                        <h4 class="text-center">📅 Réservez une Consultation Médicale</h4>
                        <p>
                          Veuillez sélectionner un médecin, choisir une date et laisser un message si nécessaire.
                          Après soumission, vous recevrez une confirmation de votre rendez-vous.
                        </p>
                      </div>
                     <form
					  action="<%= request.getContextPath() %>/rese-add.res"
					  method="post"
					  role="form"
					  class="php-email-form">
						  <div class="row">
						    <!-- Sélectionner un médecin -->
						    <div class="col-md-6 form-group">
						      <label for="medecin">Choisissez un médecin</label>
						      <select name="medecin" class="form-control" id="medecin" required>
								    <option value="">Sélectionnez un médecin</option>
								       <c:forEach var="medecin" items="${medecins}">
								      <option value="${medecin.id}">${medecin.name} | ${medecin.specialite} | ${medecin.consultation} MRU</option>
										    
									  </c:forEach>
										    
										    
								   
                               </select>

						    </div>

						    <!-- Date de réservation -->
						    <div class="col-md-6 form-group">
						      <label for="date_reservation">Date de réservation</label>
						      <input
						        type="datetime-local"
						        name="date_reservation"
						        class="form-control"
						        id="date_reservation"
						        required
						      />
						    </div>
						  </div>

						  <div class="row">
						    <div class="col-md-4 form-group">
						    
						      <input
						        type="hidden"
						        name="statut"
						        class="form-control"
						        id="date_reservation"
						        value="en attente"
						        
						        
						      />
						    </div>
						    <!-- Message optionnel -->
						    <div class="col-md-12 form-group mt-3">
						      <label for="message">Message (optionnel)</label>
						      <textarea
						        name="message"
						        class="form-control"
						        id="message"
						        rows="4"
						        placeholder="Ajoutez un message si nécessaire..."
						      ></textarea>
						    </div>
						    
						  </div>
						
						  <div class="mt-3 text-center">
						    <button type="submit" class="btn btn-primary">Réserver</button>
						  </div>
						</form>

                    
                    </div>
      </section>
      <!-- /Appointment Section -->
          
      </section>
      <!-- /Hero Section -->

   

  
        

    
     
    </main>

    <footer id="footer" class="footer light-background">
      <div class="container footer-top">
        <div class="row gy-4">
          <!-- Section logo et contact -->
          <div class="col-lg-4 col-md-6 footer-about">
            <a href="index.html" class="logo d-flex align-items-center">
              <span class="sitename">Doc-Res</span>
            </a>
            <div class="footer-contact pt-3">
              <p>A108 Adam Street</p>
              <p>Nktt, NY 535022</p>
              <p class="mt-3">
                <strong>Phone:</strong> <span>+1 5589 55488 55</span>
              </p>
              <p><strong>Email:</strong> <span>info@doc-res.com</span></p>
            </div>
            <div class="social-links d-flex mt-4">
              <a href=""><i class="bi bi-twitter"></i></a>
              <a href=""><i class="bi bi-facebook"></i></a>
              <a href=""><i class="bi bi-instagram"></i></a>
              <a href=""><i class="bi bi-linkedin"></i></a>
            </div>
          </div>

          <!-- Liens utiles -->
          <div class="col-lg-2 col-md-3 footer-links">
            <h4>Liens utiles</h4>
            <ul>
              <li><a href="#">MÃ©decins</a></li>
              <li><a href="#">Ã propos de nous</a></li>
              <li><a href="#">Services</a></li>
              <li><a href="#">Conditions d'utilisation</a></li>
              <li><a href="#">Politique de confidentialitÃ©</a></li>
            </ul>
          </div>

          <!-- Nos services -->
          <div class="col-lg-2 col-md-3 footer-links">
            <h4>Nos services</h4>
            <ul>
              <li><a href="#">RÃ©servation en ligne</a></li>
              <li><a href="#">Consultations mÃ©dicales</a></li>
              <li><a href="#">Consultation Ã  distance</a></li>
              <li><a href="#">Prise de rendez-vous rapide</a></li>
              <li><a href="#">Conseils mÃ©dicaux</a></li>
            </ul>
          </div>

          <!-- Autres informations -->
          <div class="col-lg-2 col-md-3 footer-links">
            <h4>Ã propos</h4>
            <ul>
              <li><a href="#">Notre mission</a></li>
              <li><a href="#">Ãquipe</a></li>
              <li><a href="#">Nos partenaires</a></li>
              <li><a href="#">Nos valeurs</a></li>
              <li><a href="#">CarriÃ¨res</a></li>
            </ul>
          </div>

          <!-- Support client -->
          <div class="col-lg-2 col-md-3 footer-links">
            <h4>Support</h4>
            <ul>
              <li><a href="#">FAQ</a></li>
              <li><a href="#">Assistance</a></li>
              <li><a href="#">Nous contacter</a></li>
              <li><a href="#">TÃ©moignages</a></li>
            </ul>
          </div>
        </div>
      </div>

      <div class="container copyright text-center mt-4">
        <p>
          Â© <span>Copyright</span>
          <strong class="px-1 sitename">Doc-Res</strong>
          <span>All Rights Reserved</span>
        </p>
        <div class="credits">
          <!-- Licensing information: https://bootstrapmade.com/license/ -->
          Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
        </div>
      </div>
    </footer>

    <!-- Scroll Top -->
    <a
      href="#"
      id="scroll-top"
      class="scroll-top d-flex align-items-center justify-content-center"
      ><i class="bi bi-arrow-up-short"></i
    ></a>

    <!-- Preloader -->
    <div id="preloader"></div>

    <!-- Vendor JS Files -->
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
   
    <script src="assets/vendor/aos/aos.js"></script>
    <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
    <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>

    <!-- Main JS File -->
    <script src="assets/js/main.js"></script>
  </body>
</html>
