<%-- 
    Document   : v_login
    Created on : Oct 4, 2016, 2:28:58 PM
    Author     : Ersagun
--%>

<%@page import="org.miage.m2sid.chat.Abonne"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="UTF-8" %>
<%@page import="org.miage.m2sid.chat.Particulier" %>
<%@page import="org.miage.m2sid.chat.Entreprise" %>
<%@page import="org.miage.m2sid.util.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.List" %>
<%@page import="org.hibernate.Transaction" %>
<%@page import="org.miage.m2sid.chat.Message" %>

<c:if test="${sessionScope.user == null}">
    <jsp:forward page="v_login.jsp"></jsp:forward>
</c:if>
<html>
    <head>
        <meta http-equiv="content-type" content="text/html;charset=utf-8" />
        <title>Chat</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body style="text-align:center">
        <c:if test="${sessionScope.typeAbonne == 'particulier'}">
            <h1 style="text-align: center" > Bonjour <%=((Particulier) session.getAttribute("user")).getNom() + " " + ((Particulier) session.getAttribute("user")).getPrenom()%></h1>
        </c:if>
        <c:if test="${sessionScope.typeAbonne == 'entreprise'}">
            <h1 style="text-align: center" > Bonjour Entreprise <%=((Entreprise) session.getAttribute("user")).getRaisonSociale()%></h1>
        </c:if>
        <a  class="btn btn-primary" href="index.jsp">Accueil</a>
        <a  class="btn btn-primary" href="c_getAbonnes.jsp">Afficher les abonnes</a>
        <a  class="btn btn-primary" href="c_deconnecter.jsp">Se déconnecter</a>
        <div style="margin-top:2%;" class="chat_window">
            <div class="top_menu">
                <div class="buttons">
                    <div class="button close">
                    </div>
                    <div class="button minimize">
                    </div>
                    <div class="button maximize">
                    </div>
                </div>
                <div class="title">Chat by Ersagun</div>
            </div>              
            <ul class="messages" id="listeDeMessage">
                <c:forEach var="message" items="${lesMessages}">
                    <li class="message left appeared">
                        <div class="avatar"></div>
                        <div class="text_wrapper">
                            <div class="text"><c:out value="${message.expediteur.login}"/> - Objet : <c:out value="${message.objet}"/>, Corps: <c:out value="${message.corps}"/></div>
                        </div>
                    </li>
                </c:forEach>            
            </ul>
            <div class="bottom_wrapper clearfix">

                <form  role="form" method="post" action="c_sendMessage.jsp" id="messageForm" onsubmit="return validateForm()"> 
                    <div class="form-group">
                        <!--  <div class="message_input_wrapper" style="width:30%; float:left;" > -->
                        <input class="form-control" style="height:100%;width:30%; float:left; margin-right:2%;" type="text" id="objet" name="objet" placeholder="Ecrire l'objet du message..." />
                        <!--  </div> -->
                        <!--  <div class="message_input_wrapper" style="width:50%; float:left;" > -->
                        <input class="form-control" style="height:100%;width:50%; float:left; margin-right:2%;" type="text" id="corps" name="corps" placeholder="Ecrire le corps du message..." /> 
                        <!--  </div> -->
                        <!--  <div class="send_message"><div class="icon"></div> -->
                        <button type="submit" value="send" class="btn btn-success" >Envoyer</button>
                        <!-- </div> -->
                    </div>
                </form>
            </div>
        </div>
        <script src="js/jquery.min.js"></script>
        <script src="js/notify.min.js"></script>
        <script src="js/chat.js"></script>
        <script src="js/getMessages.js"></script>
    </body>
</html>
