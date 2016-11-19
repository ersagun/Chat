
$(document).ready(function () {
    $("#particulierForm").hide();
    $("#entrepriseForm").hide();

    $("input[name='typeAbonne']").click(function () {
        var val = $(this).attr("id");
        if (val == "particulier") {
            $("#entrepriseForm").hide();
            $("#particulierForm").show();
        }

        if (val == "entreprise") {
            $("#entrepriseForm").show();
            $("#particulierForm").hide();
        }
    });
});

function validateParticulierForm() {
    var login = document.forms["particulierForm"]["login"].value;
    var mdp = document.forms["particulierForm"]["mdp"].value;
    var mdp2 = document.forms["particulierForm"]["mdp2"].value;
    var nom = document.forms["particulierForm"]["nom"].value;
    var prenom = document.forms["particulierForm"]["prenom"].value;
    if (checkVariable(login) || checkVariable(mdp) || checkVariable(mdp2) || checkVariable(nom) || checkVariable(prenom)) {
        $.notify("Toute les champs doit être rempli !");
        return false;
    }
}

function checkVariable(objet) {
    if (objet == null || objet == "") {
        return true;
    } else
        return false;
}

function validateEntrepriseForm() {
    var login = document.forms["entrepriseForm"]["login"].value;
    var mdp = document.forms["entrepriseForm"]["mdp"].value;
    var mdp2 = document.forms["entrepriseForm"]["mdp2"].value;
    var raisonSociale = document.forms["entrepriseForm"]["raisonSociale"].value;
    if (checkVariable(login) || checkVariable(mdp) || checkVariable(mdp2) || checkVariable(raisonSociale)) {
        $.notify("Toute les champs doit être rempli !");
        return false;
    }
}

function validateConnecterForm() {
    var login = document.forms["connecterForm"]["login"].value;
    var mdp = document.forms["connecterForm"]["mdp"].value;
    if (checkVariable(login) || checkVariable(mdp)) {
        $.notify("Toute les champs doit être rempli !");
        return false;
    }
}

