

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
          <li><a id="doctors" class="active" href="index.jsp">Doctors</a></li>
          <li><a id="posts" href="Admin/pages-error-404.jsp">posts</a></li>
           <li>
                <a  href="reserver_vous_med.jsp"
                  >Reserver vous medicaux</a
                >
           </li>
          
          <c:if test="${not empty sessionScope.user}">
                   
                    <li><a href="<%= request.getContextPath()%>/reserv-list.res">Reservation</a></li>
                    
           </c:if>
          
          
         
          <li><a href="#contact">Contact</a></li>
        </ul>

        <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
      </nav>
      
      <c:choose>
        <c:when test="${not empty sessionScope.user}">
          <!-- Si l'utilisateur est connecté -->
         
             <a class="cta-btn  d-none d-sm-block" href="#appointment">
           ${sessionScope.user.nom}
           </a>
          <!-- Lien de déconnexion -->
          <a class="cta-btn btn-outline d-none d-sm-block" href="<%= request.getContextPath() %>/logout.user">Logout</a>
            

         
                 </c:when>
                 
        <c:otherwise>
          <!-- Si l'utilisateur n'est pas connecté -->
          <a class="cta-btn d-none d-sm-block" href="login.jsp">Login</a>
          <a class="cta-btn btn-outline d-none d-sm-block" href="register.jsp">Register</a>
        </c:otherwise>
      </c:choose>
    </div>
  </div>
</header>



