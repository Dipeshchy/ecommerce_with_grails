<h3 class="mt-2 ml-2">Advance Search</h3>
    <div class="card ml-2 mr-2">
        <h5 class="mt-2 ml-3">Search By price</h5>
        <g:formRemote class="form-group mt-2 mb-3 ml-2" update="result" name="myForm" url="[controller: 'product', action: 'searchByPrice']">
            <label class="ml-3">Minimum Price : </label>
            <input name="minimumPrice" type="number" value="0" class="form-control col-md-8 ml-3">
            <label class="ml-3">Maximum Price : </label>
            <input name="maximumPrice" value="999999" type="number" class="form-control col-md-8 ml-3 mb-3">
            <input type="submit" class="btn btn-success ml-5 mt-2 mb-2" value="Search">
        </g:formRemote>

    </div>
    <div class="card mt-2 ml-2 mr-2 mb-2">
        <h5 class="mt-2 ml-3">Search By Brand</h5>
            <g:formRemote name="selectForm" url="[controller: 'product',action: 'searchByBrand']" update="result" class="form-group mt-2 mb-3 ml-2">
             <select name="brand" class="form-control ml-3 col-md-8 mb-3">
                <option value="all">All</option>
                <g:each in="${productbrands}" var="product">
                    <option value="${product}">${product}</option>
                </g:each>
             </select>
            <input type="submit" value="Search" class="btn btn-success ml-5 mb-2 mt-2">
        </g:formRemote>
    </div>
