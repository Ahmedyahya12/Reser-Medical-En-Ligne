
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${empty sessionScope.user}">
    <!-- Si l'utilisateur n'est pas connecté, rediriger vers la page de connexion -->
    <c:redirect url="${request.getContextPath()}/login.jsp"/>
</c:if>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!doctype html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Confirmation - Doc-Res</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
    <style>
        ::-webkit-scrollbar {
            width: 8px;
        }
        /* Track */
        ::-webkit-scrollbar-track {
            background: #f1f1f1; 
        }
        /* Handle */
        ::-webkit-scrollbar-thumb {
            background: #888; 
        }
        /* Handle on hover */
        ::-webkit-scrollbar-thumb:hover {
            background: #555; 
        }

        body, table, td, a { 
            -webkit-text-size-adjust: 100%; 
            -ms-text-size-adjust: 100%; 
        }
        table, td { 
            mso-table-lspace: 0pt; 
            mso-table-rspace: 0pt; 
        }
        img { 
            -ms-interpolation-mode: bicubic; 
            border: 0; 
            height: auto; 
            line-height: 100%; 
            outline: none; 
            text-decoration: none; 
        }
        table { 
            border-collapse: collapse !important; 
        }
        body { 
            height: 100% !important; 
            margin: 0 !important; 
            padding: 0 !important; 
            width: 100% !important; 
            background-color: #eeeeee;
        }
        a[x-apple-data-detectors] {
            color: inherit !important;
            text-decoration: none !important;
            font-size: inherit !important;
            font-family: inherit !important;
            font-weight: inherit !important;
            line-height: inherit !important;
        }
        @media screen and (max-width: 480px) {
            .mobile-hide {
                display: none !important;
            }
            .mobile-center {
                text-align: center !important;
            }
        }
        div[style*="margin: 16px 0;"] { 
            margin: 0 !important; 
        }
        .signature {
            display: flex;
            align-items: center;
            justify-content: center;
            margin-top: 40px;
            padding: 20px;
        }
        .signature img {
            margin-right: 10px;
        }
        /* New styles for date alignment and margin adjustments */
        .doc-res-logo {
            display: inline-block;
            max-width: 50%;
            min-width: 100px;
            vertical-align: top;
            margin-left: 5px;
            margin-right: 5px;
        }
        .date-info {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .date-info span {
            font-size: 16px;
            font-weight: 400;
            color: #b6b1b1;
        }
    </style>
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
<table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tr>
        <td align="center" style="background-color: #eeeeee;">
            <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%" style="max-width:600px;">
                <tr>
                    <td align="center" valign="top" style="font-size:0; padding: 35px;" bgcolor="#F44336">
                        <div class="doc-res-logo">
                            <table align="left" border="0" cellpadding="0" cellspacing="0" width="100%" style="max-width:300px;">
                                <tr>
                                    <td align="left" valign="top" style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 36px; font-weight: 800; line-height: 48px;">
                                        <h3 style="font-size: 36px; font-weight: 800; margin: 0; color: #ffffff;margin-bottom: 30px;margin-top: -29px;">Doc-Res</h3>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="date-info">
                          <span>Date rÃ©servation: 05/03/2025</span>
                            <span style="font-weight: 800;color: #000;" >Date crÃ©ation: 29/03/2025</span>
                           
                        </div>
                    </td>
                </tr>

                <tr>
                    <td align="center" style="padding: 35px 35px 20px 35px; background-color: #ffffff;" bgcolor="#ffffff">
                        <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%" style="max-width:600px;margin-top: -50px;">
                            <tr>
                                <td align="center" style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding-top: 25px;">
                                    <img src="https://img.icons8.com/carbon-copy/100/000000/checked-checkbox.png" width="125" height="120" style="display: block; border: 0px;" /><br>
                                    <h2 style="font-size: 30px; font-weight: 800; line-height: 36px; color: #333333; margin: 0;">
                                        Merci pour votre rÃ©servation !
                                    </h2>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding-top: 10px;">
                                    <p style="font-size: 16px; font-weight: 400; line-height: 24px; color: #777777;">
                                        Nous avons bien reÃ§u votre rÃ©servation. Vous recevrez bientÃ´t un email de confirmation.
                                    </p>
                                </td>
                            </tr>

                            <tr>
                                <td align="left" style="padding-top: 20px;">
                                    <table cellspacing="0" cellpadding="0" border="0" width="100%">
                                        <tr>
                                            <td width="75%" align="left" bgcolor="#eeeeee" style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                Code de rÃ©servation
                                            </td>
                                            <td width="25%" align="left" bgcolor="#eeeeee" style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                #RES-${reservation.id}
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="75%" align="left" style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding: 15px 10px 5px 10px;">
                                                Patient
                                            </td>
                                            <td width="25%" align="left" style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding: 15px 10px 5px 10px;">
                                                ${reservation.utilisateur.nom}<br>${reservation.utilisateur.email}
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="75%" align="left" style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding: 5px 10px;">
                                                Medecin
                                            </td>
                                            <td width="25%" align="left" style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding: 5px 10px;">
                                                ${reservation.medecin.name}<br>SpÃ©cialitÃ©: ${reservation.medecin.specialite}<br>Consultation: ${reservation.medecin.consultation} MRU
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="75%" align="left" style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding: 5px 10px;">
                                                HÃ´pital
                                            </td>
                                            <td width="25%" align="left" style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding: 5px 10px;">
                                                HÃ´pital Saint-Pierre
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="75%" align="left" style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding: 5px 10px;">
                                                Statut de rÃ©servation
                                            </td>
                                            <td width="25%" align="left" style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding: 5px 10px;">
                                                ${reservation.statut}
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="75%" align="left" style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding: 5px 10px;">
                                                Date de rÃ©servation
                                            </td>
                                            <td width="25%" align="left" style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding: 5px 10px;">
                                                ${reservation.date_reservation}
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>

                            <tr>
                                <td align="left" style="padding-top: 20px;">
                                    <p style="font-size: 16px; font-weight: 400; line-height: 24px; color: #777777;">
                                        Vous recevrez bientÃ´t une confirmation complÃ¨te de votre rendez-vous par email.
                                    </p>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>

            </table>
        </td>
    </tr>
</table>

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

 </body>
</html>
