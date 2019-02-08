
<nav class="bg-primary navbar-light">

    <ul class="nav mr-auto">
        <li class="nav-item">
            <g:link action="adminPanel" controller="user">
                <h3 class="text-warning ml-5 mt-2 navbar-brand">My Shop Admin Panel</h3>
            </g:link>
        </li>
        <li class="nav-item">
            <g:link action="home" controller="user" class="nav-link">
                <h5 class="ml-4 mt-2">Home</h5>
            </g:link>
        </li>



        <li class="nav-item" id="login-button">
            <g:link action="logout" controller="user" class="nav-link">
                <h5 class="mt-2 ml-2">Logout</h5>
            </g:link>
        </li>
    </ul>
</nav>