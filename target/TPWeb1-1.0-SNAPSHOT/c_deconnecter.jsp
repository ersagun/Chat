<%-- 
    Document   : c_valideLogin
    Created on : Sep 27, 2016, 2:16:19 PM
    Author     : Ersagun
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${sessionScope.user == null}">
    <jsp:forward page="v_login.jsp"></jsp:forward>
</c:if>
<c:remove var="user" scope="session" />
<c:remove var="typeAbonne" scope="session" />
<jsp:forward page="index.jsp"></jsp:forward>
