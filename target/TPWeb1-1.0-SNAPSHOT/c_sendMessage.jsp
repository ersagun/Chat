<%-- 
    Document   : c_valideLogin
    Created on : Sep 27, 2016, 2:16:19 PM
    Author     : Ersagun
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="org.miage.m2sid.chat.Abonne"%>
<%@page import="org.miage.m2sid.util.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.List" %>
<%@page import="org.hibernate.Transaction" %>
<%@page import="org.miage.m2sid.chat.Message" %>

<jsp:useBean id="message" scope="session" class="org.miage.m2sid.chat.Message" />
<jsp:setProperty name="message" property="*" />
<%
    try {
        final Session sessionHibernate = HibernateUtil.currentSession();
        final Transaction transaction = sessionHibernate.beginTransaction();
        try {
            message.setExpediteur((Abonne) session.getAttribute("user"));
            sessionHibernate.save(message);
            transaction.commit();
        } catch (Exception ex) {
            // Log the exception here
            transaction.rollback();
            throw ex;
        }
    } finally {
        HibernateUtil.closeSession();
        response.sendRedirect("c_getMessages.jsp");
    }
%>