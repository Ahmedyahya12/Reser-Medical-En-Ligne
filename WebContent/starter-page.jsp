
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="fr">

  <head>
    
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>Doc-Res</title>
    <meta name="description" content="" />
    <meta name="keywords" content="" />

    <!-- Remplacer les favicons -->
    <link href="assets/img/your-favicon.png" rel="icon" /> <!-- Remplacez "your-favicon.png" par le fichier de votre propre icône -->
    <link href="assets/img/your-favicon.png" rel="apple-touch-icon" /> <!-- Remplacez "your-favicon.png" par le fichier de votre propre icône -->

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

      <!-- Page Title -->
      <div class="page-title" data-aos="fade">
          <div class="heading">
              <div class="container">
                  <div class="row d-flex justify-content-center text-center">
                      <div class="col-lg-8">
                          <h1>Prise de Rendez-vous en Ligne</h1>
                          <p class="mb-0">
                              Simplifiez votre quotidien avec notre plateforme de prise de rendez-vous en ligne. 
                              Trouvez rapidement un professionnel de santé, un consultant ou un prestataire de service, 
                              et réservez en quelques clics. 
                          </p>
                      </div>
                  </div>
              </div>
          </div>
          <nav class="breadcrumbs">
              <div class="container">
                  <ol>
                      <li><a href="index.html">Accueil</a></li>
                      <li class="current">Rendez-vous en Ligne</li>
                  </ol>
              </div>
          </nav>
      </div><!-- End Page Title -->
  
      <!-- Starter Section Section -->
      <section id="starter-section" class="starter-section section">
  
          <!-- Section Title -->
          <div class="container section-title" data-aos="fade-up">
              <h2>Comment ça marche ?</h2>
              <p>Réservez votre rendez-vous en seulement 3 étapes simples.</p>
          </div><!-- End Section Title -->
  
          <div class="container" data-aos="fade-up">
              <div class="row text-center">
                  <div class="col-md-4">
                      <h3>🔍 Trouvez un professionnel</h3>
                      <p>Recherchez parmi nos spécialistes disponibles et choisissez celui qui vous convient.</p>
                  </div>
                  <div class="col-md-4">
                      <h3>📅 Choisissez une date</h3>
                      <p>Sélectionnez un créneau horaire qui vous arrange et confirmez votre rendez-vous.</p>
                  </div>
                  <div class="col-md-4">
                      <h3>✅ Recevez une confirmation</h3>
                      <p>Recevez un rappel de votre rendez-vous et gérez vos réservations en ligne.</p>
                  </div>
              </div>
          </div>
  
      </section><!-- /Starter Section Section -->
  
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
              <li><a href="#">Médecins</a></li>
              <li><a href="#">À propos de nous</a></li>
              <li><a href="#">Services</a></li>
              <li><a href="#">Conditions d'utilisation</a></li>
              <li><a href="#">Politique de confidentialité</a></li>
            </ul>
          </div>

          <!-- Nos services -->
          <div class="col-lg-2 col-md-3 footer-links">
            <h4>Nos services</h4>
            <ul>
              <li><a href="#">Réservation en ligne</a></li>
              <li><a href="#">Consultations médicales</a></li>
              <li><a href="#">Consultation à distance</a></li>
              <li><a href="#">Prise de rendez-vous rapide</a></li>
              <li><a href="#">Conseils médicaux</a></li>
            </ul>
          </div>

          <!-- Autres informations -->
          <div class="col-lg-2 col-md-3 footer-links">
            <h4>À propos</h4>
            <ul>
              <li><a href="#">Notre mission</a></li>
              <li><a href="#">Équipe</a></li>
              <li><a href="#">Nos partenaires</a></li>
              <li><a href="#">Nos valeurs</a></li>
              <li><a href="#">Carrières</a></li>
            </ul>
          </div>

          <!-- Support client -->
          <div class="col-lg-2 col-md-3 footer-links">
            <h4>Support</h4>
            <ul>
              <li><a href="#">FAQ</a></li>
              <li><a href="#">Assistance</a></li>
              <li><a href="#">Nous contacter</a></li>
              <li><a href="#">Témoignages</a></li>
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
