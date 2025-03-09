
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
              – Trouvez un médecin, une spécialité ou un consultation facilement
            </p>
          </div>
          <!-- End Welcome -->

          <div class="content row gy-4">
            <div class="col-lg-12 d-flex align-items-stretch">
              <div class="search-box" data-aos="zoom-out" data-aos-delay="200">
                <h3>Trouver votre médecin</h3>
                <form
                  action="<%= request.getContextPath() %>/chercher.medicin"
                  method="GET"
                  style="display: flex; gap: 10px; width: 100%; align-items: center;"
                >
                  <input
                    type="text"
                    class="form-control"
                    placeholder="Chercher par Nom du médecin ou consultation ou specialte "
                    name="motCle"
                    value="${model.motCle}"
                    style="height: 60px; width: 600px"
                  />
                  
                   <button type="submit" class="btn btn-primary ms-2" title="Search">
            <i class="bi bi-search"></i>
            </button>
                </form>
              </div>
            </div>
            <!-- End Search Box -->

          </div>
          <!-- End Row -->
        </div>
      </section>
      <!-- /Hero Section -->

      <!-- Doctors Section -->
      <section id="doctors" class="doctors section">
        <!-- Section Title -->
        <div class="container section-title" data-aos="fade-up">
          <h2>Nos Médecins</h2>
          <p>
            Découvrez nos médecins qualifiés et réservez votre consultation avec
            le spécialiste de votre choix.
          </p>
        </div>
        <!-- End Section Title -->

        <div class="container">
          <div class="row gy-4">
           <c:forEach var="medicin" items="${model.medicins}">
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
                  <h4>${medicin.name}</h4>
                  <span>Spécialiste en ${medicin.specialite}</span>

                  <!-- Information List -->
                  <ul class="doctor-info-list">
                    <li><strong>Adresse :</strong> ${medicin.adresse}</li>
                    <li><strong>Spécialité :</strong> ${medicin.specialite}</li>
                    <li><strong>Consultation :</strong> <span class="badge bg-danger " style="display: inline-block;">${medicin.consultation}MRU</span></li>
                    <li><strong>Temps d'attente :</strong> ${medicin.tempsAttente}</li>
                    <li><strong>Heures de travail :</strong> ${medicin.heuresTravail}</li>
                    <li><strong>Séance Téléphonique :</strong> ${medicin.seanceTelephonique}</li>
                  </ul>
                  <!-- End Information List -->

                  <div class="text-center">
                    <a
                      href="<%= request.getContextPath() %>/form-add.res"
                      class="btn btn-primary"
                      >Réserver</a
                    >
                    <a onclick="return false" href="detaie_doctor.jsp" class="btn btn-link"
                      >Détails</a
                    >
                  </div>
                </div>
              </div>
            </div>
            <!-- End Doctor Card -->
          </c:forEach>
          </div>
        </div>
      </section>
      <!-- /Doctors Section -->

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
