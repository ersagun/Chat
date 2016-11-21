<%-- 
    Document   : c_valideLogin
    Created on : Sep 28, 2016, 1:12:18 PM
    Author     : Ersagun
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="org.hibernate.Query"%>
<%@page import="org.miage.m2sid.util.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.List" %>
<%@page import="org.hibernate.Transaction" %>
<%@page import="org.miage.m2sid.chat.Particulier" %> 
<%@page import="org.miage.m2sid.chat.Message" %>
      
<c:set var="typeAbonne" scope="session" value="${param.typeAbonne}" />
    <% 
        boolean connected=false;
        try {
            final Session sessionHibernate = HibernateUtil.currentSession();
            final Transaction transaction = sessionHibernate.beginTransaction();
            try {
                System.out.println(request.getParameter("login"));
                String hql = "FROM Particulier P WHERE P.login = :p_login AND P.mdp = :p_mdp ";
                Query query = sessionHibernate.createQuery(hql);
                query.setParameter("p_login",request.getParameter("login"));
                query.setParameter("p_mdp",request.getParameter("mdp"));
                List utilisateur = query.list();
                connected =! utilisateur.isEmpty();
                if(connected)
                    session.setAttribute("user", utilisateur.get(0));
                transaction.commit();
            } catch (Exception ex) {
                // Log the exception here
                transaction.rollback();
                throw ex;
            }
        } finally {
            HibernateUtil.closeSession();
            if(connected)
                response.sendRedirect("c_getMessages.jsp");
            else {
                request.setAttribute("erreur", "Le mot de passe ou login incorrecte !");
                   RequestDispatcher rd = getServletContext().getRequestDispatcher("/v_erreur.jsp");
                    rd.forward(request, response);
                
            }
        }
    %>

