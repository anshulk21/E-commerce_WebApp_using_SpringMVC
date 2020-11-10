<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container">

    <h1>Add Products</h1>
    <h4>Add Your Products Here!!!</h4>
    <br>
    <br>
    <br>
    <form:form action="${pageContext.request.contextPath}/admin/product/addProduct" method="post" commandName="product" enctype="multipart/form-data">

        <div class="form-group align-content-center">
    <label for="name">Name</label>

            <form:errors path="productName" cssStyle="color: red"/>
            <br>
            <form:input class="form-control" path="productName" id="name" />
        </div>
        <div class="form-group">
    <label for="description">Description</label>
            <br>
        <form:textarea class="form-control" path="productDescription" id="description" />
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
        <form:input class="form-control" path="productManfacturer" id="manfacturer"/>
    </div>
        <div class="form-group">
            <label for="price">Price</label>
            <form:errors path="productPrice" cssStyle="color: red"/>
            <br>
            <form:input path="productPrice" id="price" />
        </div>
        <div class="form-group">
            <label for="unitInStock">Unit In Stock</label>
            <form:errors path="unitInStock" cssStyle="color: red"/>
            <br>
            <form:input path="unitInStock" id="unitInStock"/>
        </div>
        <div class="form-group">
            <br>
            <label class="control-label" for="productImage">Add Product Image</label>
            <form:input path="productImage" id="productImage" type="file" class="form:input-large"/>
        </div>
<br>
<br>
        <input type="submit" class="btn btn-primary" value="Submit"/>

        <a href="<c:url value="/admin/productInventory"/> " class="btn btn-danger">Cancel</a>
    </form:form>

</div>
<%@include file="/WEB-INF/views/template/footer.jsp"%>


