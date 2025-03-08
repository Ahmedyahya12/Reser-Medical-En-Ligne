<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${empty sessionScope.user}">
    <!-- Si l'utilisateur n'est pas connecté, rediriger vers la page de connexion -->
    <c:redirect url="login.jsp"/>
</c:if>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

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
      <!-- Hero Section -->
      <section id="hero" class="hero section light-background">
        <img src="assets/img/hero-bg.jpg" alt="" data-aos="fade-in" />

        <div class="container position-relative">
          <div
            class="welcome position-relative"
            data-aos="fade-down"
            data-aos-delay="100"
          >
            <h2>Bienvenue sur Doc-Res</h2>
            <p>
             
             <p>احجز مع أفضل دكتور في موريتانيا – ابحث عن طبيب، تخصص أو مستشفى بسهولة</p>
             â Trouvez un mÃ©decin, une
              spÃ©cialitÃ© ou un hÃ´pital facilement
            </p>
          </div>
          <!-- End Welcome -->

          <div class="content row gy-4">
            <div class="col-lg-12 d-flex align-items-stretch">
              <div class="search-box" data-aos="zoom-out" data-aos-delay="200">
                <h3>Trouver votre mÃ©decin</h3>
                <form
                  action="#"
                  method="GET"
                  style="
                    display: flex;
                    gap: 10px;
                    width: 100%;
                    align-items: center;
                  "
                >
                  <input
                    type="text"
                    class="form-control"
                    placeholder="Nom du mÃ©decin"
                    name="doctor-name"
                    style="height: 60px; width: 300px"
                  />
                  <input
                    type="text"
                    class="form-control"
                    placeholder="SpÃ©cialitÃ©"
                    name="specialty"
                    style="height: 60px; width: 300px"
                  />
                  <input
                    type="text"
                    class="form-control"
                    placeholder="Nom de l'hÃ´pital"
                    name="hospital-name"
                    style="height: 60px; width: 300px"
                  />
                </form>
              </div>
            </div>
            <!-- End Search Box -->

            <!-- End Why Box -->
          </div>
          <!-- End Row -->
        </div>
      </section>
      <!-- /Hero Section -->

      <!-- Doctors Section -->
      <section id="doctors" class="doctors section">
        <!-- Section Title -->
        <div class="container section-title" data-aos="fade-up">
          <h2>Nos MÃ©decins</h2>
          <p>
            DÃ©couvrez nos mÃ©decins qualifiÃ©s et rÃ©servez votre consultation avec
            le spÃ©cialiste de votre choix.
          </p>
        </div>
        <!-- End Section Title -->

        <div class="container">
          <div class="row gy-4">
            <!-- Doctor Card 1 -->
            <div class="col-lg-6" data-aos="fade-up" data-aos-delay="100">
              <div class="team-member d-flex align-items-start">
                <div class="pic">
                  <img
                    src="assets/img/doctors/doctors-1.jpg"
                    class="img-fluid"
                    alt="Dr. Walter White"
                  />
                </div>
                <div class="member-info">
                  <h4>Dr. Walter White</h4>
                  <span>SpÃ©cialiste en MÃ©decine Interne</span>

                  <!-- Information List -->
                  <ul class="doctor-info-list">
                    <li><strong>Adresse :</strong> Nktt, Mauritanie</li>
                    <li><strong>SpÃ©cialitÃ© :</strong> MÃ©decine Interne</li>
                    <li><strong>Consultation :</strong> 500 MRU</li>
                    <li><strong>Temps d'attente :</strong> 1 heure</li>
                    <li><strong>Heures de travail :</strong> 8 heures</li>
                    <li><strong>SÃ©ance TÃ©lÃ©phonique :</strong> 150 MRU</li>
                  </ul>
                  <!-- End Information List -->

                  <div class="text-center">
                    <a
                      href="reservation_vous_medicaux.html"
                      class="btn btn-primary"
                      >RÃ©server</a
                    >
                    <a href="detaie_doctor.html" class="btn btn-link"
                      >DÃ©tails</a
                    >
                  </div>
                </div>
              </div>
            </div>
            <!-- End Doctor Card -->

            <!-- Doctor Card 2 -->
            <div class="col-lg-6" data-aos="fade-up" data-aos-delay="200">
              <div class="team-member d-flex align-items-start">
                <div class="pic">
                  <img
                    src="assets/img/doctors/doctors-2.jpg"
                    class="img-fluid"
                    alt="Dr. Sarah Jhonson"
                  />
                </div>
                <div class="member-info">
                  <h4>Dr. Sarah Jhonson</h4>
                  <span>AnesthÃ©siste</span>

                  <!-- Information List -->
                  <ul class="doctor-info-list">
                    <li><strong>Adresse :</strong> Nktt, Mauritanie</li>
                    <li><strong>SpÃ©cialitÃ© :</strong> AnesthÃ©sie</li>
                    <li><strong>Consultation :</strong> 600 MRU</li>
                    <li><strong>Temps d'attente :</strong> 1 heure</li>
                    <li><strong>Heures de travail :</strong> 8 heures</li>
                    <li><strong>SÃ©ance TÃ©lÃ©phonique :</strong> 200 MRU</li>
                  </ul>
                  <!-- End Information List -->

                  <div class="text-center">
                    <a
                      href="reservation_vous_medicaux.html"
                      class="btn btn-primary"
                      >RÃ©server</a
                    >
                    <a href="detaie_doctor.html" class="btn btn-link"
                      >DÃ©tails</a
                    >
                  </div>
                </div>
              </div>
            </div>
            <!-- End Doctor Card -->

            <!-- Doctor Card 3 -->
            <div class="col-lg-6" data-aos="fade-up" data-aos-delay="300">
              <div class="team-member d-flex align-items-start">
                <div class="pic">
                  <img
                    src="assets/img/doctors/doctors-3.jpg"
                    class="img-fluid"
                    alt="Dr. William Anderson"
                  />
                </div>
                <div class="member-info">
                  <h4>Dr. William Anderson</h4>
                  <span>Cardiologue</span>

                  <!-- Information List -->
                  <ul class="doctor-info-list">
                    <li><strong>Adresse :</strong> Nktt, Mauritanie</li>
                    <li><strong>SpÃ©cialitÃ© :</strong> Cardiologie</li>
                    <li><strong>Consultation :</strong> 700 MRU</li>
                    <li><strong>Temps d'attente :</strong> 1 heure</li>
                    <li><strong>Heures de travail :</strong> 8 heures</li>
                    <li><strong>SÃ©ance TÃ©lÃ©phonique :</strong> 250 MRU</li>
                  </ul>
                  <!-- End Information List -->

                  <div class="text-center">
                    <a
                      href="reservation_vous_medicaux.html"
                      class="btn btn-primary"
                      >RÃ©server</a
                    >
                    <a href="detaie_doctor.html" class="btn btn-link"
                      >DÃ©tails</a
                    >
                  </div>
                </div>
              </div>
            </div>
            <!-- End Doctor Card -->

            <!-- Doctor Card 4 -->
            <div class="col-lg-6" data-aos="fade-up" data-aos-delay="400">
              <div class="team-member d-flex align-items-start">
                <div class="pic">
                  <img
                    src="assets/img/doctors/doctors-4.jpg"
                    class="img-fluid"
                    alt="Dr. Amanda Jepson"
                  />
                </div>
                <div class="member-info">

                  <h4> <a href="detaie_doctor.html" style="text-decoration: none;color:inherit"> Dr. Amanda Jepson </a></h4>
                  <span>Neurochirurgienne</span>

                  <!-- Information List -->
                  <ul class="doctor-info-list">
                    <li><strong>Adresse :</strong> Nktt, Mauritanie</li>
                    <li><strong>SpÃ©cialitÃ© :</strong> Neurochirurgie</li>
                    <li><strong>Consultation :</strong> 800 MRU</li>
                    <li><strong>Temps d'attente :</strong> 1 heure</li>
                    <li><strong>Heures de travail :</strong> 8 heures</li>
                    <li><strong>SÃ©ance TÃ©lÃ©phonique :</strong> 300 MRU</li>
                  </ul>
                  <!-- End Information List -->

                  <div class="text-center">
                    <a
                      href="reservation_vous_medicaux.html"
                      class="btn btn-primary"
                      >RÃ©server</a
                    >
                  
                  </div>
                </div>
              </div>
            </div>
            <!-- End Doctor Card -->
          </div>
        </div>
      </section>
      <!-- /Doctors Section -->

     

    
     
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
