<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div style="text-align: center;  ">
<h1>All Products List</h1>
<h4>Checkout our all new products here!!!</h4>
    </div>
<br>
                <div class="row">
                    <div class="col-12">
                        <div class="row">
                            <c:forEach items="${products}" var="product">
                                <div class="col-3" style="height: 500px;">
                                    <a href="<spring:url value="/product/viewProduct/${product.productId}"/>" style="text-decoration: none;">
                                        <img src="<c:url value="/resources/images/${product.productId}.png"/>"  class="productListImage" />
                                        <div class="productListInfo">
                                            <h5>${product.productName}</h5>
                                            <h6>${product.productManfacturer}</h6>
                                            <p>${product.productStatus}</p>
                                            <p>${product.unitInStock}</p>
                                            <p>${product.productCondition}</p>
                                            <h5>${product.productPrice} USD</h5>
                                        </div>
                                    </a>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
<style>
    .productListImage{
        display:block;
        margin-left: auto;
        margin-right: auto;
        width: 200px;
        height: 200px;
    }
    .productListImage:hover{
        transform: translate(0,-10px);
        z-index: -6;
    }
    .productListInfo{
        text-align: center;
        color: black;
    }
</style>

<%@include file="/WEB-INF/views/template/footer.jsp"%>