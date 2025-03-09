
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
    <style type="text/css">
      #nom_user {
             background: radial-gradient(red, blue);
		    padding: 8px 19px;
		    border-radius: 0;
		    color: white;
		    font-weight: 900;
		    /* text-decoration: unset; */
		    text-transform: CAPITALIZE;
		    font-size: 19px;
      }
       
      
    </style>
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
                      <li><a href="doctors-list.medicin">Accueil</a></li>
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
  

    <%@include file="components/footer.jsp" %>

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
