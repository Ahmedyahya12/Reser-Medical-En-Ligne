
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
        <h1>Reservation</h1>
        <nav>
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.html">Reservation</a></li>
            <li class="breadcrumb-item active">Liste de reservation</li>
          </ol>
        </nav>
      </div>
      <!-- End Page Title -->

      <section class="section dashboard">
        <div class="row">
         
          <div class="col-lg-12">
            <div class="row">
            
              <!-- Recent Sales -->
            <!-- Users Table -->
              <div class="col-12">
                <div class="card users-list overflow-auto">
                  
                

                  <div class="card-body">
                   <!-- Title and Search Bar -->
                  <div class="d-flex justify-content-between align-items-center p-3">
                    <h5 class="card-title m-0">Liste des Reservation</h5>
                    <form class="search-form d-flex align-items-center" method="POST" action="#">
                      <input type="text" name="query" class="form-control" placeholder="Search" title="Enter search keyword" />
                      <button type="submit" class="btn btn-primary ms-2" title="Search">
                        <i class="bi bi-search"></i>
                      </button>
                    </form>
                  </div>
    <!-- End Title and Search Bar -->

				    <table class="table table-borderless">
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
				            <a href="#"
				            >
				            <img style="width: 50px;height: 50px;"
								src="assets/img/reservation.jpg"
								alt="Profile"
								class="rounded-circle mb-2"
				            />
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
					
					    
					    <c:when test="${reservation.statut == 'confirmé'}">
					        <span class="badge bg-success">${reservation.statut}</span>
					    </c:when>
					
					
					    <c:when test="${reservation.statut == 'annulé'}">
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
				        <!-- Ajoutez d'autres lignes de réservation ici -->
				      </tbody>
				    </table>
				    
                  </div>
                </div>
              </div>
<!-- End Users Table -->
              <!-- End Recent Sales -->
              <!-- Doctors Table -->

<!-- End Doctors Table -->


              <!-- End Top Selling -->
            
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
    <script src="assets/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>
  </body>
</html>
