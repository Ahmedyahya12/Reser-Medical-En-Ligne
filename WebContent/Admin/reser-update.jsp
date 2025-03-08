
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

    <title>Doc-Rec Admin Dashboard</title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />

    <!-- Favicons -->

    <!-- Favicon (icÃ´ne du site dans l'onglet du navigateur) -->
    <link href="assets/img/logo.png" rel="icon" type="image/png" />

    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect" />
    <link
      href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
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
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet" />
    <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet" />
    <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet" />
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet" />
    <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet" />

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet" />
  </head>

  <body>
    <!-- ======= Header ======= -->
    <header id="header" class="header fixed-top d-flex align-items-center">
        <div class="d-flex align-items-center justify-content-between">
      <a href="index.html" class="logo d-flex align-items-center">
        <img src="assets/img/logo.png" alt="">
        <span class="d-none d-lg-block">Doc-Admin</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

      <div class="search-bar">
        <form
          class="search-form d-flex align-items-center"
          method="POST"
          action="#"
        >
          <input
            type="text"
            name="query"
            placeholder="Search"
            title="Enter search keyword"
          />
          <button type="submit" title="Search">
            <i class="bi bi-search"></i>
          </button>
        </form>
      </div>
      <!-- End Search Bar -->

      <nav class="header-nav ms-auto">
        <ul class="d-flex align-items-center">
          <li class="nav-item d-block d-lg-none">
            <a class="nav-link nav-icon search-bar-toggle" href="#">
              <i class="bi bi-search"></i>
            </a>
          </li>
          <!-- End Search Icon-->

          <li class="nav-item dropdown pe-3">
            <a
              class="nav-link nav-profile d-flex align-items-center pe-0"
              href="#"
              data-bs-toggle="dropdown"
            >
              <img
                src="assets/img/profile-img.jpg"
                alt="Profile"
                class="rounded-circle"
              />
              <span class="d-none d-md-block dropdown-toggle ps-2">Dr. ${sessionScope.user.nom}</span>
               </a
            ><!-- End Profile Iamge Icon -->

            <ul
              class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile"
            >
              <li class="dropdown-header">
                <h6>Dr. ${sessionScope.user.nom}</h6>
                <span class="badge bg-primary">Admin</span>
              </li>
              <li>
                <hr class="dropdown-divider" />
              </li>

              <li>
                <hr class="dropdown-divider" />
              </li>

              <li>
                <hr class="dropdown-divider" />
              </li>

              <li>
                <hr class="dropdown-divider" />
              </li>

               <li>
			     <a onclick="return confirm('esque vous sure de deconnecter')" class="dropdown-item d-flex align-items-center" href="<%= request.getContextPath() %>/logout.user">
			        <i class="bi bi-box-arrow-right"></i>
			        
			        <span>Sign Out</span>
			     </a>
			         
			           
			        </button>
			 
           </li>
            </ul>
            <!-- End Profile Dropdown Items -->
          </li>
          <!-- End Profile Nav -->
        </ul>
      </nav>
      <!-- End Icons Navigation -->
    </header>
    <!-- End Header -->

    <!-- ======= Sidebar ======= -->
      
    <%@include file="components/Sidebar.jsp" %>
  
   
     
  
    <!-- End Sidebar-->

    <main id="main" class="main">
      <div class="pagetitle">
        <h1>Réservez un rendez-vous médical
        </h1>
        <nav>
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.html">Reservation</a></li>
            <li class="breadcrumb-item active">Ajouter des Reservation</li>
          </ol>
        </nav>
      </div>
      <!-- End Page Title -->
    
      <section class="section dashboard">
        <div class="row">
          <div class="col-lg-12">
            <div class="row">
              <!-- Users Form -->
              <div class="col-12">
                <div class="card users-list overflow-auto">
                  <div class="card-body py-4">
    
                    <!-- User Registration Section -->
                    <div class="container section-title" data-aos="fade-up">
                      <h2>Modifie une  Reservation</h2>
                      
                    </div>

                    <span class="badge "></span>
    
                    <div class="container" data-aos="fade-up" data-aos-delay="100">
                      <!-- Section d'informations -->
                      
					 <form
					  action="<%= request.getContextPath() %>/Admin/SaveRes.res"
					  method="post"
					  role="form"
					  class="php-email-form">
					  <input type="hidden" name="id" value="${reservation.id}" />
					
					  <div class="row">
					    <!-- Sélectionner un médecin -->
					    <div class="col-md-6 form-group">
					      <label for="medecin">Choisissez un médecin</label>
					      <select name="medecin" class="form-control" id="medecin" required>
								    <option value="">Sélectionnez un médecin</option>
								 <c:forEach var="medecin" items="${medecins}">
								    <option value="${medecin.id}" ${medecin.id == reservation.medecin.id ? 'selected' : ''}>
								        ${medecin.name} | ${medecin.specialite} | ${medecin.consultation} MRU
								    </option>
                             </c:forEach>

                               </select>
					    </div>
					
					    <!-- Sélectionner un patient -->
					    <div class="col-md-6 form-group">
					      <label for="patient">Choisissez un patient</label>
					      <select name="patient" class="form-control">
							  <c:forEach var="user" items="${users}">
							    <option value="${user.id}" ${user.id == reservation.utilisateurId ? 'selected' : ''}>
							      ${user.nom} | ${user.email}
							    </option>
							  </c:forEach>
                          </select>
					    </div>
					  </div>
					
					  <div class="row">
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
					
					    <!-- Statut -->
					    <div class="col-md-6 form-group">
					      <label for="statut">Statut</label>
					      <select name="statut" class="form-control" id="statut" required>
					        <option value="confirme" ${'confirme' == reservation.statut ? 'selected' : ''}>confirme</option>
					        <option value="en attente" ${'en attente' == reservation.statut ? 'selected' : ''}>en attente</option>
					        <option value="annule" ${'annule' == reservation.statut ? 'selected' : ''}>annuler</option>
					      </select>
					    </div>
					  </div>
					
					  <div class="row">
					    <!-- Message -->
					    <div class="col-md-12 form-group mt-3">
					      <label for="message">Message (optionnel)</label>
					      <textarea
					        name="message"
					        class="form-control"
					        id="message"
					        rows="4"
					        placeholder="Ajoutez un message si nécessaire..."
					      >${reservation.message}</textarea>
					    </div>
					  </div>
					
					  <div class="mt-3 text-center">
					    <button type="submit" class="btn btn-primary">Mettre à jour</button>
					  </div>
					</form>


                    
                    </div>
                    <!-- /User Registration Section -->
    
                  </div>
                </div>
              </div>
              <!-- /Users Form -->
            </div>
          </div>
        </div>
      </section>
    </main>
    
    <!-- End #main -->

    <!-- ======= Footer ======= -->
    
    <%@include file="components/footer.jsp" %>
     
    <!-- End Footer -->

    <a
      href="#"
      class="back-to-top d-flex align-items-center justify-content-center"
      ><i class="bi bi-arrow-up-short"></i
    ></a>

    <!-- Vendor JS Files -->
    <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/chart.js/chart.umd.js"></script>
    <script src="assets/vendor/echarts/echarts.min.js"></script>
    <script src="assets/vendor/quill/quill.js"></script>
    <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
    <script src="assets/vendor/tinymce/tinymce.min.js"></script>
    

    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>
    <script type="text/javascript">

       // Change badge color based on role selected
  document.getElementById('role').addEventListener('change', function () {
    var role = this.value;
    var badge = document.getElementById('roleBadge');
    if (role === 'patient') {
      badge.textContent = 'Patient';
      badge.className = 'badge bg-success';
    } else if (role === 'Admin') {
      badge.textContent = 'Admin';
      badge.className = 'badge bg-danger';
    } else if (role === 'Médecin') {
      badge.textContent = 'Médecin';
      badge.className = 'badge bg-info';
    } else {
      badge.textContent = '';
      badge.className = '';
    }
  });
  oninput
    </script>
  </body>
</html>
