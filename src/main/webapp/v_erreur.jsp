<%@page import="org.miage.m2sid.util.HibernateUtil"%>
<%@page import="org.miage.m2sid.util.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.miage.m2sid.chat.Abonne"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Chat by Ersagun Yalcintepe</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body style="text-align: center;">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <h3>
                        Conception des applications web
                    </h3>
                    <div class="jumbotron well">
                        <h2>
                            Erreur
                        </h2>
                        <p>
                            ${erreur}</p>
                    </div> 

                    <c:if test="${sessionScope.user != null}">
                        <h2> Bonjour <%= ((Abonne) session.getAttribute("user")).getLogin()%> </h2>
                    </c:if>

                    <div class="container parent">
                        <ul class="list-unstyled">
                            <c:if test="${sessionScope.user != null}">
                                <li style="margin:2%"><a  class="btn btn-primary" href="c_getMessages.jsp">Aller au chat</a></li>
                                <li style="margin:2%"><a  class="btn btn-primary" href="c_getAbonnes.jsp">Afficher les abonnes</a></li>
                              <li style="margin:2%"><a  class="btn btn-primary" href="c_deconnecter.jsp">Se déconnecter</a></li>    
                            </c:if>

                            <c:if test="${sessionScope.user == null}">
                                <li style="margin:2%"><a  class="btn btn-primary" href="v_login.jsp">Se connecter</a></li>
                                <li style="margin:2%"><a  class="btn btn-primary" href="v_inscrire.jsp">S'inscrire</a></li>
                                <li style="margin:2%"><a  class="btn btn-primary" href="c_getAbonnes.jsp">Afficher les abonnes</a></li>
                                </c:if>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="container">
                <p class="text-muted">Copyright by Ersagun Yalcintepe 2016-2017</p>
            </div>
    </body>
</html>
