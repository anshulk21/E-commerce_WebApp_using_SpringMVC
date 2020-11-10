<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>



        <div class="page-header container">
            <h1>Product Detail</h1>
            <p class="lead">Here is the detail information of the product</p>
        </div>

        <div class="container" ng-app = "cartApp">
            <div class="row">
                <div class="col-md-5">
                    <img src="<c:url value="/resources/images/${product.productId}.png" />" alt="image" style="width:100%"/>
                </div>
                <div class="col-md-5">
                    <h3>${product.productName}</h3>
                    <p>${product.productDescription}</p>
                    <p><strong>Manufacturer</strong>: ${product.productManfacturer}</p>
                    <p><strong>Condition</strong>: ${product.productCondition}</p>
                    <p>${product.productPrice} USD</p>

                    <br/>

                    <c:set var = "role" scope="page" value="${param.role}" />
                    <c:set var = "url" scope="page" value="/product/productList" />
                    <c:if test="${role='admin'}">
                        <c:set var="url" scope="page" value="/admin/productInventory" />
                    </c:if>


                    <p ng-controller="cartCtrl">
                        <a href="<c:url value = "${url}" />" class="btn btn-danger">Back</a>

                        <c:if test="${pageContext.request.userPrincipal.name == null}">
                        <a href="<c:url value="/login"/>" class="btn btn-warning">
                            <img src="<c:url value="/resources/icons/shopping-cart.svg"/>"> Order Now</a>
                        </c:if>
                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                            <a href="#" class="btn btn-warning" ng-click="addToCart('${product.productId}')" >
                            <img src="<c:url value="/resources/icons/shopping-cart.svg"/>"> Order Now</a>
                        </c:if>

                        <a href="<spring:url value="/customer/cart" />" class="btn btn-dark">
                            <img src="<c:url value="/resources/icons/shopping-bag.svg"/>"/> View Cart</a>
                    </p>

                </div>
            </div>
        </div>


        <!-- My -->
        <script src="<c:url value="/resources/js/controller.js" /> "></script>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>