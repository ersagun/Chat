
$(document).ready(function () {

    window.setInterval(function () {
            $.get('c_getMessagesJson.jsp', function (responseText) {
            var response = eval('(' + responseText + ')');
            $("#listeDeMessage").empty();
            var j = 0;
            lastTen = response;
            for (i in response)
            {
                $("#listeDeMessage").append("<li class=\"message left appeared\"><div class=\"avatar\"></div><div class=\"text_wrapper\"><div class=\"text\">" + response[i]["login"] + " - Objet : " + response[i]["objet"] + ", Corps: " + response[i]["corps"] + "</div></div></li>");
            }
             });
        var scr = $('#listeDeMessage')[0].scrollHeight;
        $('#listeDeMessage').animate({scrollTop: scr}, 10);
    }, 1000);
});



function validateForm() {
    var objet = document.forms["messageForm"]["objet"].value;
    console.log(objet);
    var corps = document.forms["messageForm"]["corps"].value;
    if ((objet == null || objet == "") || (corps == null || corps == "")) {
        $.notify("L'objet et le corps doit être rempli !");
        return false;
    }

}