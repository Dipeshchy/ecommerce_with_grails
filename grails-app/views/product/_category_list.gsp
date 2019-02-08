%{--<h3 class="mt-3">Categories</h3>--}%
%{--<ul style="list-style-type: circle">--}%
    %{--<g:each in="${categoryList}" status="i" var="category">--}%
        %{--<li><g:link action="sortByCategory" controller="product" params="${[categoryname: category]}">${category}</g:link></li>--}%
    %{--</g:each>--}%
%{--</ul>--}%

<h3 class="mt-3">Categories</h3>
<ul style="list-style-type: circle">
    <g:each in="${categoryList}" status="i" var="category">
        <li><g:remoteLink controller="product" action="sortByCategory"
                      params="${[categoryname: category]}"
                      update="result">${category}</g:remoteLink>
        </li>
    </g:each>
</ul>