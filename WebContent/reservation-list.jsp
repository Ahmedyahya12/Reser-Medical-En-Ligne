<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<meta charset="UTF-8">

<!DOCTYPE html>
<html lang="fr">

  <head>
    
 <meta name="viewport" content="width=device-width, initial-scale=1">    <title>Doc-Res</title>
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
   
  <!-- Appointment Section -->


        
        <div class="container section-title" data-aos="fade-up">
        <section id="appointment" class="appointment section">
  <h2 class="text-center mb-4">Liste des réservations pour vous</h2>
  
  <table class="table table-borderless my-6 p-4"> <!-- Ajout du padding -->
    <thead>
      <tr>
        <th>Symbole</th>
        <th scope="col">Code</th>
        <th scope="col">Date Res.</th>
        <th scope="col">Patient</th>
        <th scope="col">Email</th>
        <th scope="col">Médecin</th>
        <th scope="col">Statut</th>
        <th scope="col">Créé le</th>
        <th scope="col">Message</th>
        <th>Actions</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="reservation" items="${reservations}">
        <tr>
          <th scope="row">
            <a href="#">
              <img style="width: 50px; height: 50px;" src="Admin/assets/img/reservation.jpg" alt="Profile" class="rounded-circle mb-2"/>
            </a>
          </th>
          <td>RES- ${reservation.id}</td>
          <td>${reservation.dateReservation}</td>
          <td><span class="badge bg-primary">${reservation.utilisateur.nom}</span></td>
          <td>${reservation.utilisateur.email}</td>
          <td>${reservation.medecin.name}</td>
          <td>
            <c:choose>
              <c:when test="${reservation.statut == 'en attente'}">
                <span class="badge bg-warning">${reservation.statut}</span>
              </c:when>
              <c:when test="${reservation.statut == 'confirme'}">
                <span class="badge bg-success">${reservation.statut}</span>
              </c:when>
              <c:when test="${reservation.statut == 'annule'}">
                <span class="badge bg-danger">${reservation.statut}</span>
              </c:when>
              <c:otherwise>
                <span class="badge bg-secondary">${reservation.statut}</span>
              </c:otherwise>
            </c:choose>
          </td>
          <td>${reservation.dateCreation}</td>
          <td>${reservation.message}</td>
          <td>
            <a href="<%= request.getContextPath() %>/Admin/modifier.res?id=${reservation.id}" class="badge text-bg-warning">
              <i class="fas fa-edit"></i> Modifier
            </a>
            <a href="<%= request.getContextPath() %>/Admin/supprime.res?id=${reservation.id}" class="badge text-bg-danger" onclick="return confirm('Voulez-vous vraiment supprimer cet élément ?');">
              <i class="fas fa-trash"></i> Supprimer
            </a>
          </td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
  
  </section>
  
</div>
  
	

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
          © <span>Copyright</span>
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
    <script src="assets/vendor/php-email-form/validate.js"></script>
    <script src="assets/vendor/aos/aos.js"></script>
    <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
    <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>

    <!-- Main JS File -->
    <script src="assets/js/main.js"></script>
  </body>
</html>
