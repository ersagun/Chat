<%-- 
    Document   : v_login
    Created on : Oct 4, 2016, 2:28:58 PM
    Author     : Ersagun
--%>
<%@ page pageEncoding="UTF-8" %>

<html>
    <head>
        <meta charset="utf-8" />
        <title>Connect</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
        <div class="container-fluid" style="text-align: center">
            <div class="row">
                <div class="col-md-12">
                    <h3>
                        CHAT by Ersagun Yalcintepe
                    </h3>
                    <h3>
                        Se connecter
                    </h3>
                    <form role="form" method="post" action="c_connecter.jsp" id="connecterForm" onsubmit="return validateConnecterForm()">
                        <div class="form-group">
                            <div class="radio">
                                <label><input type="radio" style="clear:both;" name="typeAbonne"  id="part" value="particulier" class="radioButtton">Particulier</label>
                            </div>
                            <div class="radio">
                                <label><input type="radio" style="clear:both;" name="typeAbonne" id="ent" value="entreprise" class="radioButtton">Entreprise</label>
                            </div>	 

                            <label for="inputLogin">
                                login
                            </label>
                            <input type="text" class="form-control" id="login" disabled="disabled" name="login" />
                        </div>
                        <div class="form-group">

                            <label for="inputMdp">
                                Mot de passe
                            </label>
                            <input type="password" class="form-control" id="mdp" disabled="disabled" name="mdp" />
                        </div>

                        <button type="submit" value="connect" id="connectButton" disabled="disabled" class="btn btn-default">
                            Se connecter
                        </button>
                        <a class="btn btn-default" href="v_inscrire.jsp">S'inscrire</a>
                        <a class="btn btn-default" href="index.jsp">Accueil</a>
                    </form> 
                </div>
            </div>
        </div>
        <div class="container" style="text-align:center">
            <p class="text-muted">Copyright by Ersagun Yalcintepe 2016-2017</p>
        </div>
        <script src="js/jquery.min.js"></script>
        <script src="js/login.js"></script>
        <script src="js/notify.min.js"></script>
        <script src="js/action.js"></script>
    </body>
</html>
