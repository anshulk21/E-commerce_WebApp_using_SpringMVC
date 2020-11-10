<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Anshul
  Date: 02-Aug-20
  Time: 20:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <title>My Music Store</title>


    <link rel="shortcut icon" href="<c:url value="/resources/icons/music.svg"/> " type="image/svg">

    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/carousel/">

    <!-- Angular JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
    <script src="<c:url value="/resources/js/angular.min.js"/> "></script>
    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">



    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>
    <!-- Custom styles for this template -->
    <link href="<c:url value="/resources/css/carousel.css"/>" rel="stylesheet">
</head>
<body>


<header>
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <div class="collapse navbar-collapse container" id="navbarCollapse">
            <ul class="navbar-nav mr-auto">

                    <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/"/> ">Home</a>
                    </li>
                    <li class="nav-item">
                       <a class="nav-link" href="<c:url value="/product/productList"/>">Products</a>
                    </li>

            </ul>
            <div class="input-group mb-3" style="top: 10px">
                <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default">
                <div class="input-group-prepend">
                   <a href="#"> <span class="input-group-text" id="inputGroup-sizing-default">
                       <img src="<c:url value="/resources/icons/search.svg"/>"/></span></a>
                </div>
            </div>
            <ul class="navbar-nav">
                <c:if test="${pageContext.request.userPrincipal.name !=null}">
                    <li class="nav-item">
                        <a class="nav-link" >Welcome:${pageContext.request.userPrincipal.name}</a>
                    </li>
                    <li>
                        <a class="nav-link" href="<c:url value="/j_spring_security_logout"/> ">Logout</a>
                    </li>
                <c:if test="${pageContext.request.userPrincipal.name !='admin'}">
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/customer/cart"/>">Cart</a>
                    </li>
                </c:if>
                <c:if test="${pageContext.request.userPrincipal.name =='admin'}">
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/admin"/>">Admin</a>
                    </li>
                </c:if>
                </c:if>
                <c:if test="${pageContext.request.userPrincipal.name == null}">
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/login" />">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/register"/>">Register</a>
                </li>
                </c:if>
            </ul>
        </div>
    </nav>
</header>
<br>
<br>
