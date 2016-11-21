
$(document).ready(function () {
    
    $('.radioButtton').change(function () {
        $('#mdp').prop('disabled', false);
        $('#login').prop('disabled', false);
        $('#connectButton').prop('disabled', false);
    });
    if($('#part').is(':checked') || $('#ent').is(':checked') ){ 
     window.location.reload(true)    
    }
});