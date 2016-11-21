<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body style="text-align: center;">
        <div class="container">
            <h1>Les Abonnes</h1>
            <ul class="list-group">
                <c:forEach var="abonne" items="${lesAbonnes}">
                    <c:if test="${abonne['class'].simpleName eq 'Entreprise'}">
                        <li class="list-group-item" >Entreprise : <c:out value="${abonne.raisonSociale}"/></li>
                        </c:if>

                    <c:if test="${abonne['class'].simpleName eq 'Particulier'}">
                        <li class="list-group-item">Particulier : <c:out value="${abonne.prenom}"/> <c:out value="${abonne.nom}"/> </li>
                        </c:if>
                </c:forEach>            
            </ul>
            <a class="btn btn-default" href="index.jsp" style="margin-bottom:2%;">Accueil</a>
            <div class="container" style="text-align:center">
                <p class="text-muted">Copyright by Ersagun Yalcintepe 2016-2017</p>
            </div>
        </div>
    </body>
</html>

