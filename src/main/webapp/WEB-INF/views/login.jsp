<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<br>
<div class="container form-signin">

    <h2>Login</h2>
            <c:if test="${not empty msg}">
                <div style="color: #34ce57">${msg}</div>
            </c:if>
          <form  name="loginForm" action="<c:url value="/j_spring_security_check" />" method="post">
              <c:if test="${not empty error}">
                  <div style="color: red" >${error}</div>
              </c:if>
              <div class="form-group">
                  <label for="username">Username</label>
                  <input type="text" id="username" name="username" class="form-control" placeholder="username"/>
              </div>
              <div class="form-group">
                  <label for="password">Password</label>
                  <input type="password" id="password" name="password" placeholder="password" class="form-control"/>
              </div>
              <div>
                  <a href="<spring:url value="/register"/> " style="font-size: 13px;">
                      New Member? Register Here
                  </a>
              </div>
              <br>
              <input class="btn-dark" type="submit" value="Submit" >
              <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
          </form>
</div>
<%@include file="/WEB-INF/views/template/footer.jsp"%>
