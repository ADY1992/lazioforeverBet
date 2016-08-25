function resetErrors(formId) {
    $(".error").removeClass("error");
    $("#" + formId).find("span").remove();
}
function parseDate(date) {
    // Interpreta la data tenendo conto della timezone in essa impostata.
    return moment.parseZone(date);
}
function formatDate(date, format) {
    return date.format(format);
}

function populateSelect(id, map) {
    var options  = $("#" + id);
    var emptyElem = options.attr("emptyElement");
    if (typeof emptyElem != 'undefined' && emptyElem == 'true'){
	options.append($("<option />"));
    }
    $.each( map, function( key, value ) {
	options.append($("<option />").val(key).text(value));
    });
}

function enableField(id){
    $("#" + id).removeAttr("disabled");
    $("#" + id).removeAttr("readonly");
    
}
