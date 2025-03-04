<aside id="sidebar" class="sidebar">
    <ul class="sidebar-nav" id="sidebar-nav">
        <!-- Dashboard -->
        <li class="nav-item ">
            <a class="nav-link collapsed" href="index.jsp">
                <i class="bi bi-house-door"></i>
                <span>Dashboard</span>
            </a>
        </li>
        <!-- End Dashboard Nav -->

        <!-- Médecins -->
        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#doctors-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-person-bounding-box"></i><span>Doctors</span>
                <i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="doctors-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="doctors-list.html">
                        <i class="bi bi-list-ul"></i><span>Doctors List</span>
                    </a>
                </li>
                <li>
                    <a href="doctors-add.html">
                        <i class="bi bi-person-plus"></i><span>Add New Doctor</span>
                    </a>
                </li>
            </ul>
        </li>
        <!-- End Doctors Nav -->

        <!-- Réservations -->
        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#reservations-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-calendar-check"></i><span>Reservations</span>
                <i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="reservations-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="reservations-list.html">
                        <i class="bi bi-list-check"></i><span>Reservations List</span>
                    </a>
                </li>
                <li>
                    <a href="" style="opacity: 0.3;cursor: none;">
                        <i class="bi bi-hourglass-split"></i><span>Pending Reservations</span>
                    </a>
                </li>
                <li>
                    <a href="reservations-history.html">
                        <i class="bi bi-clock-history"></i><span>Reservation History</span>
                    </a>
                </li>
            </ul>
        </li>
        <!-- End Reservations Nav -->

        <!-- Utilisateurs -->
        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#users-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-person"></i><span>Users</span>
                <i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="users-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="<%= request.getContextPath() %>/Admin/user_list.user">
                        <i class="bi bi-people"></i><span>Users List</span>
                    </a>
                </li>
                <li>
                    <a href="users-add.jsp">
                        <i class="bi bi-person-plus"></i><span>Add User</span>
                    </a>
                </li>
            </ul>
        </li>
        <!-- End Users Nav -->

        <!-- Déconnexion -->
        <li class="nav-item">
            <a onclick="return confirm('Êtes-vous sûr de vous déconnecter ?')" 
               class="nav-link collapsed" href="<%= request.getContextPath() %>/logout.user">
                <i class="bi bi-box-arrow-right"></i>
                <span>Logout</span>
            </a>
        </li>
        <!-- End Logout Nav -->
    </ul>
</aside>



