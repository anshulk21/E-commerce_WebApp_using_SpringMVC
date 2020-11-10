<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Cart</h1>
                    <p>All the selected products in your shopping cart</p>
                </div>
            </div>
        </section>

        <section class="container" ng-app="cartApp">

            <div ng-controller = "cartCtrl" ng-init="initCartId('${cartId}')">

                <div>
                    <a class="btn btn-danger pull-left col-xs-2 col-sm-2 float-left" ng-click = "clearCart()" style=" color: white">
                        <img src="<c:url value="/resources/icons/x-square.svg"/>" >Clear Cart</a>
                    <a href="<spring:url value="/order/${cartId}" />" class="btn btn-success col-xs-2 col-sm-2 float-right">
                        <img src="<c:url value="/resources/icons/check-circle.svg"/> "> Check out</a>
                </div>

                <br/><br/><br/>

                <table class="table table-hover">
                    <tr>
                        <th>Product</th>
                        <th>Unit Price</th>
                        <th>Price</th>
                        <th>Action</th>
                    </tr>
                    <tr ng-repeat = "item in cart.cartItems">
                        <td>{{item.product.productName}}</td>
                        <td>{{item.product.productPrice}}</td>
                        <td>{{item.totalPrice}}</td>
                        <td>
                            <a href="#" ng-click="removeFromCart(item.product.productId)">
                                    <img src="<c:url value="/resources/icons/minus.svg"/> " /></a>
                             {{item.quantity}}
                            <a href="#" class="label label-danger"  ng-click="addPlusToCart(item.product.productId)">
                                    <img src="<c:url value="/resources/icons/plus.svg"/> "/>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <th></th>
                        <th>Grand Total</th>
                        <th>{{calGrandTotal()}}</th>
                        <th></th>

                    </tr>
                </table>

                <a href="<spring:url value="/product/productList" />" class="btn btn-dark">Continue Shopping</a>
            </div>
        </section>

        <!-- My -->
        <script src="<c:url value="/resources/js/controller.js" /> "></script>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>