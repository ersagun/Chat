<%-- 
    Document   : c_valideLogin
    Created on : Sep 27, 2016, 2:16:19 PM
    Author     : Ersagun
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="org.miage.m2sid.util.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.List" %>
<%@page import="org.hibernate.Transaction" %>
<%@page import="org.miage.m2sid.chat.Message" %>

<%
    try {
        final Session sessionHibernate = HibernateUtil.currentSession();
        final Transaction transaction = sessionHibernate.beginTransaction();
        try {
            // The real work is here
            List messages = sessionHibernate.createQuery("from Message").list();
            request.setAttribute("lesMessages", messages);
            transaction.commit();
        } catch (Exception ex) {
            // Log the exception here
            transaction.rollback();
            throw ex;
        }
    } finally {
        HibernateUtil.closeSession();
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/v_messages.jsp");
        rd.forward(request, response);
    } 
%>