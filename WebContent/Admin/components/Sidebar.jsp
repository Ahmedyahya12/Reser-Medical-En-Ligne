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

        <!-- M�decins -->
        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#doctors-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-person-bounding-box"></i><span>Doctors</span>
                <i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="doctors-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="<%= request.getContextPath() %>/Admin/doctors-list.medicin">
                        <i class="bi bi-list-ul"></i><span>Doctors List</span>
                    </a>
                </li>
                <li>
                    <a href="doctors-add.jsp">
                        <i class="bi bi-person-plus"></i><span>Add New Doctor</span>
                    </a>
                </li>
            </ul>
        </li>
        <!-- End Doctors Nav -->

        <!-- R�servations -->
        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#reservations-nav" data-bs-toggle="collapse" href="">
                <i class="bi bi-calendar-check"></i><span>Reservations</span>
                <i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="reservations-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="<%= request.getContextPath()%>/Admin/reserv-list.res">
                        <i class="bi bi-list-check"></i><span>Reservations List</span>
                    </a>
                </li>
                <li>
                    <a href="" style="opacity: 0.3;cursor: none;">
                        <i class="bi bi-hourglass-split"></i><span>Pending Reservations</span>
                    </a>
                </li>
                <li>
                    <a href="<%= request.getContextPath() %>/Admin/form-add.res">
                        <i class="bi bi-clock-history"></i><span>Ajouter Reservation</span>
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

        <!-- D�connexion -->
        <li class="nav-item">
            <a onclick="return confirm('�tes-vous s�r de vous d�connecter ?')" 
               class="nav-link collapsed" href="<%= request.getContextPath() %>/logout.user">
                <i class="bi bi-box-arrow-right"></i>
                <span>Logout</span>
            </a>
        </li>
        <!-- End Logout Nav -->
    </ul>
</aside>



