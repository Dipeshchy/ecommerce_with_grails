<h6 class="ml-5"><i>Welcome User</i>&nbsp; &nbsp; &nbsp;&nbsp; ${messageStatus}</h6>
<nav class="bg-dark navbar-light ml-5 mr-5">
    <g:link action="dashboard" controller="product">
        <h2 class="text-warning ml-5 mt-2" id="brand-name"><b><i>My Shop</i></b></h2>
    </g:link>
    <ul class="nav mr-auto">
        <li class="nav-item">
            <g:link action="dashboard" controller="product" class="nav-link ml-4">
                <h5 class="ml-5 mt-2">Home</h5>
            </g:link>
        </li>

        <li class="nav-item">
            <g:link action="about" controller="product" class="nav-link">
                <h5 class="mt-2">About Us</h5>
            </g:link>
        </li>
        <li class="nav-item">
            <g:link action="contact" controller="product" class="nav-link">
                <h5 class="mt-2">Contact Us</h5>
            </g:link>
        </li>
        <li class="nav-item">
            <g:link action="faq" controller="product" class="nav-link">
                <h5 class="mt-2">FAQ</h5>
            </g:link>
        </li>
        <li class="nav-item">
            <g:link action="cart" controller="product" class="nav-link">
                <h5 class="mt-2">My Cart ( <i class="fa fa-shopping-cart"></i> ${numberInCart} )</h5>
            </g:link>
        </li>
        <li class="nav-item">

            <g:formRemote class="form-inline my-2 ml-5 mr-5" update="result" name="searchForm" url="[controller: 'product', action: 'searchProduct']">
                <input name="productToSearch" type="text" placeholder="Search" class="form-control mr-sm-2">
                <input type="submit" class="btn btn-success" value="Search">
            </g:formRemote>

        </li>
        <li class="nav-item ml-5">
            <g:link action="login" controller="user" class="nav-link ml-5">
                <h5 class="mt-2 ml-1">Login</h5>
            </g:link>
        </li>
    </ul>
</nav>


%{--<h3>Welcome User</h3>--}%
%{--<nav class="bg-primary navbar-light">--}%
    %{--<g:link action="dashboard" controller="product">--}%
        %{--<h3 class="text-warning ml-5 mt-2" id="brand-name">My Shop</h3>--}%
    %{--</g:link>--}%
    %{--<ul class="nav mr-auto">--}%
        %{--<li class="nav-item">--}%
%{--<g:link action="dashboard" controller="product" class="nav-link">--}%
            %{--<h5 class="ml-4 mt-2">Home</h5>--}%
%{--</g:link>--}%
        %{--</li>--}%
        %{--<li class="nav-item">--}%
%{--<g:link action="cart" controller="product" class="nav-link">--}%
            %{--<h5 class="ml-2 mt-2">My Cart ( <i class="fa fa-shopping-cart"></i> ${numberInCart} )</h5>--}%
%{--</g:link>--}%
        %{--</li>--}%
        %{--<li class="nav-item">--}%
%{--<g:link action="home" controller="user" class="nav-link">--}%
            %{--<h5 class="mt-2 ml-2">About Us</h5>--}%
%{--</g:link>--}%
        %{--</li>--}%
        %{--<li class="nav-item">--}%
%{--<g:link action="home" controller="user" class="nav-link">--}%
            %{--<h5 class="ml-2 mt-2">Conact Us</h5>--}%
%{--</g:link>--}%
        %{--</li>--}%
        %{--<li class="nav-item">--}%
%{--<g:link action="home" controller="user" class="nav-link">--}%
            %{--<h5 class="ml-2 mt-2">FAQ</h5>--}%
%{--</g:link>--}%
        %{--</li>--}%
   %{--<li class="nav-item">--}%

        %{--<g:form class="form-inline my-2 ml-4 mr-4" action="simpleSearch" controller="product">--}%
            %{--<input class="form-control mr-sm-2" type="text" name="productToSearch" placeholder="Search">--}%
            %{--<select name="category" class="form-control mr-sm-2">--}%
                %{--<option value="all">Categories</option>--}%
                %{--<g:each in="${categoryList}" status="i" var="category">--}%
                    %{--<option value="${category}">${category}</option>--}%
                %{--</g:each>--}%
            %{--</select>--}%
            %{--<button class="btn btn-success" type="submit">Search</button>--}%
        %{--</g:form>--}%

   %{--</li>--}%
        %{--<li class="nav-item ml-5">--}%
            %{--<g:link action="login" controller="user" class="nav-link ml-5">--}%
                %{--<h5 class="mt-2 ml-5">Login</h5>--}%
             %{--</g:link>--}%
        %{--</li>--}%
    %{--</ul>--}%
%{--</nav>--}%