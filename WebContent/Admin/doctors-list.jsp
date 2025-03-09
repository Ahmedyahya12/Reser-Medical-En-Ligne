

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
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
  
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
             placeholder="Chercher par nom, spécialité, ou consultation" 
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
        <h1>Liste des Doctors</h1>
        <nav>
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.html">Doctors</a></li>
            <li class="breadcrumb-item active">Liste des Doctors</li>
          </ol>
        </nav>
      </div>
      <!-- End Page Title -->

      <section class="section dashboard">
        <div class="row">
         
          <div class="col-lg-12">
            <div class="row">
            
              <!-- Recent Sales -->
        
              <!-- End Recent Sales -->
              <!-- Doctors Table -->
<div class="col-12">
  <div class="card doctors-list overflow-auto">
    
    <!-- Title and Search Bar -->
    <div class="d-flex justify-content-between align-items-center p-3">
      <h5 class="card-title m-0">Liste des Médecins</h5>
      <form class="search-form d-flex align-items-center" id="form" method="get" action="<%= request.getContextPath() %>/Admin/chercher.medicin">
        <input type="text" name="motCle" value="${model.motCle}" class="form-control shearch"   placeholder="Chercher par nom, spécialité, ou consultation"  title="Enter search keyword" />
        <button type="submit" class="btn btn-primary ms-2" title="Search">
          <i class="bi bi-search"></i>
        </button>
      </form>
    </div>
    <!-- End Title and Search Bar -->

    <div class="card-body">
      <table class="table table-borderless ">
        <thead>
          <tr>
            <th scope="col">Avatar</th>
         
            <th scope="col">Nom</th>
            <th scope="col">Spécialité</th>
            <th scope="col">Adresse</th>
            <th scope="col">Consultation</th>
            <th scope="col">T. Attente</th>
            <th scope="col"> H. Travail</th>
            <th scope="col">S. Téléphonique</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>
        <c:forEach var="medicin" items="${model.medicins}">
        
 
       
          <tr>
            <th scope="row">
              <a href="#">
                <img style="width: 50px;height: 50px;" src="assets/img/doctors-1.jpg" alt="Profile" class="rounded-circle mb-2" />
              </a>
            </th>

           
            <td>${medicin.name}</td>
            <td>${medicin.specialite}</td>
            <td>${medicin.adresse}</td>
            <td><span class="badge bg-danger">${medicin.consultation}MRU</span></td> 
            <td>${medicin.tempsAttente}</td>
            <td><span class="badge bg-success">${medicin.heuresTravail}</span></td>
            <td>${medicin.seanceTelephonique} </td>
            <td>
						   
              <a href="<%= request.getContextPath() %>/Admin/modifier.medicin?id=${medicin.id}" class="badge text-bg-warning">
                         <i class="fas fa-edit"></i> Modifier
                           </a>
                     
                           <a href="<%= request.getContextPath() %>/Admin/supprime.medicin?id=${medicin.id}" class="badge text-bg-danger" onclick="return confirm('Voulez-vous vraiment supprimer cet élément ?');">
               <i class="fas fa-trash"></i> Supprimer
               </a>
                 
                      </td>
          </tr>
          
          </c:forEach>
        </tbody>
      </table>
    </div>
  </div>
</div>
<!-- End Doctors Table -->


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
    <script src="assets/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>
    <script type="text/javascript">
    
  
    
    
    	  // Sélectionner le formulaire par sa classe
    	  const form = document.querySelector("#form");
    	  const search = document.querySelector(".shearch");

    	  search.addEventListener("focus", () => {
    		  console.log("AAAA")
    	    // Ajouter les styles à la classe du formulaire avec !important
    	    
    	    form.style.setProperty("width", "700px", "important");
    	    
    	  });
    	


    
    
    
    </script>
   
  </body>
</html>
