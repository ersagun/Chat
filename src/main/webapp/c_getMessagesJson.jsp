<%-- 
    Document   : c_valideLogin
    Created on : Sep 27, 2016, 2:16:19 PM
    Author     : Ersagun
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="org.miage.m2sid.util.MessageJSON"%>
<%@page import="org.miage.m2sid.util.MessageJSONSerializer"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.google.gson.GsonBuilder"%>
<%@page import="com.google.gson.Gson"%>
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
            //request.setAttribute("lesMessages", messages);
            response.setContentType("text/plain");
            response.setCharacterEncoding("UTF-8");
            Gson gson=new GsonBuilder().registerTypeAdapter(MessageJSON.class, new MessageJSONSerializer()).create();
            List<MessageJSON> corps=new ArrayList<MessageJSON>();
            for(int i=0;i<messages.size();i++){
                MessageJSON msg=new MessageJSON(((Message)messages.get(i)).getExpediteur().getLogin(),((Message)messages.get(i)).getObjet(),((Message)messages.get(i)).getCorps());
                corps.add(msg);
            }
            String json=gson.toJson(corps);
            //System.out.println(json);
            response.getWriter().write(json);       
            transaction.commit();
        } catch (Exception ex) {
            // Log the exception here
            transaction.rollback();
            throw ex;
        }
    } finally {
        HibernateUtil.closeSession();
        //RequestDispatcher rd = getServletContext().getRequestDispatcher("/v_messages.jsp");
        //rd.forward(request, response);
    }   
%>