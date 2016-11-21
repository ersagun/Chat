<%-- 
    Document   : c_valideLogin
    Created on : Sep 27, 2016, 2:16:19 PM
    Author     : Ersagun
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="org.miage.m2sid.util.HibernateUtil"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.List" %>
<%@page import="org.hibernate.Transaction" %>
<%@page import="org.miage.m2sid.chat.Particulier" %>
<%@page import="org.miage.m2sid.chat.Message" %>

<c:set var="typeAbonne" scope="session" value="${param.typeAbonne}" />
<c:if test="${typeAbonne == 'particulier'}">
    <jsp:useBean id="particulier" scope="session" class="org.miage.m2sid.chat.Particulier" />
    <jsp:setProperty name="particulier" property="*" />
    <%
            final Session sessionHibernate = HibernateUtil.currentSession();
            final Transaction transaction = sessionHibernate.beginTransaction();
            String hql = "FROM Abonne A WHERE A.login = :a_login";
            Query query = sessionHibernate.createQuery(hql);
            query.setParameter("a_login", particulier.getLogin());
            List utilisateurExistant = query.list();
            System.out.println(utilisateurExistant.size());
            if (utilisateurExistant.size() == 0 && (request.getParameter("mdp2").equals(request.getParameter("mdp")))) {
                try {
                    session.setAttribute("user", particulier);
                    sessionHibernate.save(particulier);
                    transaction.commit();
                    HibernateUtil.closeSession();
                    response.sendRedirect("c_getMessages.jsp");
                } catch (Exception ex) {
                    // Log the exception here
                    transaction.rollback();
                    throw ex;
                }
            } else {
                transaction.commit();
                HibernateUtil.closeSession();
                request.setAttribute("erreur", "Login existe ou le mot de passe doit être identique !");
                   RequestDispatcher rd = getServletContext().getRequestDispatcher("/v_erreur.jsp");
                    rd.forward(request, response);  
            }     
    %>
    <%-- <jsp:forward page="v_messages.jsp" /> --%>
    <%--
    <c:set var="loginNotExist" scope="page" value="true" />
    <c:forEach items="${list}" var="item">
        <c:if test="${item.login ==particulier.login}">
            <c:set var="loginNotExist" scope="page" value="false" />
        </c:if>
    </c:forEach>
    <c:choose>
        <c:when test="${loginNotExist}">
            <jsp:forward page="v_messages.jsp" />      
        </c:when>
        <c:otherwise>
            <jsp:forward page="v_inscrire.jsp" />      
        </c:otherwise>
    </c:choose>
    --%>
</c:if>
<c:if test="${typeAbonne == 'entreprise'}">
    <p>My type is: <c:out value="${typeAbonne}"/><p>
        <jsp:useBean id="entreprise" scope="session" class="org.miage.m2sid.chat.Entreprise" />
        <jsp:setProperty name="entreprise" property="*" />
    <%
            final Session sessionHibernate2 = HibernateUtil.currentSession();
            final Transaction transaction2 = sessionHibernate2.beginTransaction();
            String hql2 = "FROM Abonne A WHERE A.login = :a_login";
            Query query2 = sessionHibernate2.createQuery(hql2);
            query2.setParameter("a_login", entreprise.getLogin());
            List utilisateurExistant2 = query2.list();
            System.out.println(utilisateurExistant2.size());
            if (utilisateurExistant2.size() == 0 && (request.getParameter("mdp2").equals(request.getParameter("mdp"))) ) {
                try {
                    session.setAttribute("user", entreprise);
                    sessionHibernate2.save(entreprise);
                    transaction2.commit();
                    HibernateUtil.closeSession();
                    response.sendRedirect("c_getMessages.jsp");
                } catch (Exception ex) {
                    // Log the exception here
                    transaction2.rollback();
                    throw ex;
                }
            } else {
                transaction2.commit();
                HibernateUtil.closeSession();
                request.setAttribute("erreur", "Login existe ou le mot de passe doit être identique !");
                   RequestDispatcher rd = getServletContext().getRequestDispatcher("/v_erreur.jsp");
                    rd.forward(request, response); 
            }     
    %>
    </c:if>