<%-- 
    Document   : v_login
    Created on : Oct 4, 2016, 2:28:58 PM
    Author     : Ersagun
--%>
<%@ page pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Inscription</title>

        <link type="text/css" rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body style="text-align:center">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <h3>
                        CHAT by Ersagun Yalcintepe
                    </h3>
                    <h3>
                        S'inscrire
                    </h3>

                    <div class="radio">
                        <label><input type="radio" style="clear:both;" name="typeAbonne" id="particulier">Particulier</label>
                    </div>
                    <div class="radio">
                        <label><input type="radio" style="clear:both;" name="typeAbonne" id="entreprise">Entreprise</label>
                    </div>
                    <form hidden role="form" method="post" action="c_inscrire.jsp" id="entrepriseForm" onsubmit="return validateEntrepriseForm()">  
                        <div class="form-group">

                            <input type="hidden" class="form-control" id="typeAbonne" name="typeAbonne" value="entreprise" />

                            <label for="inputLogin" >
                                Login
                            </label>
                            <input type="text" class="form-control" id="login" name="login" />

                            <label for="inputRS" >
                                Raison Sociale
                            </label>
                            <input type="text" class="form-control" id="raisonSociale" name="raisonSociale" />

                            <label for="inputMdp">
                                Mot de passe
                            </label>
                            <input type="password" class="form-control" id="mdp" name="mdp" />

                            <label for="inputMdp">
                                Confirmer mot de passe
                            </label>
                            <input type="password" class="form-control" id="mdp2" name="mdp2" />
                        </div>

                        <button type="submit" value="connect" style="margin-bottom:2%"  class="btn btn-default">
                            S'inscrire
                        </button>
                    </form> 
                    <form hidden role="form" method="post" action="c_inscrire.jsp" id="particulierForm" onsubmit="return validateParticulierForm()">  
                        <div class="form-group">

                            <input type="hidden" class="form-control" id="typeAbonne" name="typeAbonne" value="particulier" />


                            <label for="inputLogin" >
                                Login
                            </label>
                            <input type="text" class="form-control" id="login" name="login" />

                            <label for="inputLogin">
                                Nom
                            </label>
                            <input type="text" class="form-control" id="nom" name="nom" />
                            <label for="inputLogin">
                                Prenom
                            </label>
                            <input type="text" class="form-control" id="prenom" name="prenom" />
                            <label for="inputMdp">
                                Mot de passe
                            </label>
                            <input type="password" class="form-control" id="mdp" name="mdp" />

                            <label for="inputMdp">
                                Confirmer mot de passe
                            </label>
                            <input type="password" class="form-control" id="mdp2" name="mdp2" />
                        </div>
                        <button style="margin-bottom:2%" type="submit" value="connect"  class="btn btn-default"
                                >                            S'inscrire
                        </button>
                    </form> 
                </div>
            </div>
        </div>  <a class="btn btn-default" href="index.jsp" style="margin-bottom:2%">Accueil</a>
        <div class="container" style="text-align:center">
            <p class="text-muted">Copyright by Ersagun Yalcintepe 2016-2017</p>
        </div>
        <script src="js/jquery.min.js"></script>
        <script src="js/notify.min.js"></script>
        <script src="js/action.js"></script>
        <script src="js/inscription.js"></script>
    </body>
</html>
