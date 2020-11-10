<%@include file="/WEB-INF/views/template/header.jsp"%>
<br>
<div class="container">
<h1>Admin Page</h1>
<h4>This is Admin Page!!!</h4>
<br>
    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <h2>
            Welcome ${pageContext.request.userPrincipal.name} | <a href="<c:url value="/j_spring_security_logout"/> "> Log Out</a>
        </h2>
    </c:if>

    
<h4><a href="<c:url value="/admin/productInventory"/>">Product Inventory</a></h4>
<br>
<br>
    <h4>
        <a href="<c:url value="/admin/customer" /> ">Customer Management</a>
    </h4>

    <p>Here you can view the customer information!</p>

</div>
<%@include file="/WEB-INF/views/template/footer.jsp"%>
