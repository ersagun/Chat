
$(document).ready(function () {
    if($('#particulier').is(':checked') || $('#entreprise').is(':checked') ){ 
     window.location.reload(true)    
    }
});