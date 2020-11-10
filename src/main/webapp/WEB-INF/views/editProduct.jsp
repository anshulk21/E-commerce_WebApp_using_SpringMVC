<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container">

    <h1>Edit Products</h1>
    <h4>Edit Your Products Here!!!</h4>
    <br>
    <br>
    <br>
    <form:form action="${pageContext.request.contextPath}/admin/product/editProduct" method="post" commandName="product" enctype="multipart/form-data">
    <form:hidden path="productId" value="${product.productId}" />
        <div class="form-group align-content-center">
            <label for="name">Name</label>
            <br>
          <form:errors path="productName" cssStyle="color: red"/>
            <form:input class="form-control" path="productName" id="name" value="${product.productName}"/>
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <br>
            <form:textarea class="form-control" path="productDescription" id="description" value="${product.productDescription}"/>
        </div>
        <div class="form-group">
            <label for="condition">Condition</label>
            <br>
            <label class="checkbox-inline"> <form:radiobutton path="productCondition" id="condition" value="New"/>New</label>
            <label class="checkbox-inline"> <form:radiobutton path="productCondition" id="condition" value="Old"/>Old</label>
        </div>

        <div class="form-group">
            <label for="status">Status</label>
            <br>
            <label class="checkbox-inline"> <form:radiobutton path="productStatus" id="status" value="Active"/>Active</label>
            <label class="checkbox-inline"> <form:radiobutton path="productStatus" id="status" value="Not Active"/>Not Active</label>
        </div>
        <div class="form-group">
            <label for="manfacturer">Manfacturer</label>
            <br>
            <form:input class="form-control" path="productManfacturer" id="manfacturer" value="${product.productManfacturer}"/>
        </div>
        <div class="form-group">
            <label for="productPrice">Price</label>
            <br>
            <form:errors path="productPrice" cssStyle="color: red"/>
            <form:input path="productPrice" id="productPrice" value="${product.productPrice}"/>
        </div>
        <div class="form-group">
            <label for="unitInStock">Unit In Stock</label>
            <br>
            <form:errors path="unitInStock" cssStyle="color: red"/>
            <form:input path="unitInStock" id="unitInStock" value="${product.unitInStock}"/>
        </div>
        <div class="form-group">
            <br>
            <label class="control-label" for="productImage">Add Product Image</label>
            <br>
            <form:input path="productImage" id="productImage" type="file" class="form:input-large"/>
        </div>
        <br>
        <br>
        <input type="submit" class="btn btn-primary" value="Submit"/>

        <a href="<c:url value="/admin/productInventory"/> " class="btn btn-danger">Cancel</a>
    </form:form>

</div>
<%@include file="/WEB-INF/views/template/footer.jsp"%>


