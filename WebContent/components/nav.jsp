

<header id="header" class="header sticky-top">
  <div class="branding d-flex align-items-center">
    <div class="container position-relative d-flex align-items-center justify-content-between">
      <a href="doctors.html" class="logo d-flex align-items-center me-auto">
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <!-- <img src="assets/img/logo.png" alt=""> -->
        <h1 class="sitename">Doc-Res</h1>
      </a>

      <nav id="navmenu" class="navmenu">
        <ul>
          <li><a id="doctors"  href="doctors-list.medicin">Doctors</a></li>
          <li><a id="posts" href="Admin/pages-error-404.jsp">posts</a></li>
           <li>
                <a id="reserve-vous"  href="<%= request.getContextPath() %>/form-add.res"
                  >Reserver vous medicaux</a>
           </li>
          
          <c:if test="${not empty sessionScope.user}">
                   
                    <li><a id="resrvation" href="<%= request.getContextPath()%>/reserv-list.res">Reservation</a></li>
                    
           </c:if>
          
          
         
          <li><a id="contact" href="Admin/pages-error-404.jsp">Contact</a></li>
        </ul>

        <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
      </nav>
      
      <c:choose>
        <c:when test="${not empty sessionScope.user}">
          <!-- Si l'utilisateur est connecté -->
         
             <a id="nom_user"  class="cta-btn  d-none d-sm-block" href="#appointment">
           ${sessionScope.user.nom}
           </a>
          <!-- Lien de déconnexion -->
          <a onclick="return confirm('esque vous sure de deconnecter')" class="cta-btn btn-outline d-none d-sm-block" href="<%= request.getContextPath() %>/logout.user">Logout</a>
            

         
                 </c:when>
                 
        <c:otherwise>
          <!-- Si l'utilisateur n'est pas connecté -->
          <a class="cta-btn d-none d-sm-block" href="login.jsp">Login</a>
          <a class="cta-btn btn-outline d-none d-sm-block" href="Register.jsp">Register</a>
        </c:otherwise>
      </c:choose>
    </div>
  </div>
</header>

<script type="text/javascript">
  
let currentPage = window.location.pathname.split('/').pop();

// Ajoute la classe active au lien correspondant
if (currentPage === 'doctors-list.medicin') {
    document.getElementById('doctors').classList.add('active');
} else if (currentPage === 'form-add.res') {
    document.getElementById('reserve-vous').classList.add('active');
}else if (currentPage === 'reserv-list.res') {
    document.getElementById('resrvation').classList.add('active');
}
   

</script>


