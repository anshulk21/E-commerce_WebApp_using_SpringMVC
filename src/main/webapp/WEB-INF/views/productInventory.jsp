<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class = "container">
    <h1>Products Inventory</h1>
    <h4>Add Products Here!!!</h4>
    <br>
    <br>
    <br>
    <br>

    <table style="table-layout: fixed; overflow: auto;" class="table table-striped table-hover">
        <tr>
            <th></th>
            <th>Product Name</th>
            <th>Product Price</th>
            <th>Product status</th>
            <th>Units In Stock</th>
            <th>Product Manfacturer</th>
            <th></th>
        </tr>

        <c:forEach items="${products}" var="product">
            <tr>
                <td style=" display: block;">
                    <img src="<c:url value="/resources/images/${product.productId}.png"/>" style="width: 100px; height: 60px;"/></td>
                <td>${product.productName}</td>
                <td>${product.productPrice} USD</td>
                <td>${product.productStatus}</td>
                <td>${product.unitInStock}</td>
                <td>${product.productManfacturer}</td>
                <td> <a href="<spring:url value="/product/viewProduct/${product.productId}"/>">
                        <img src="<c:url value="/resources/icons/info.svg"/> "/></a>
                    <a href="<c:url value="/admin/product/deleteProduct/${product.productId}"/>">
                        <img src="<c:url value="/resources/icons/delete.svg"/> "/></a>
                    <a href="<c:url value="/admin/product/editProduct/${product.productId}"/>">
                        <img src="<c:url value="/resources/icons/edit-4.svg"/> "/></a>
                </td>
            </tr>
        </c:forEach>

    </table>

    <a href="<spring:url value="/admin/product/addProduct" />" class="btn btn-primary">Add Product</a>
</div>


<%@include file="/WEB-INF/views/template/footer.jsp"%>
