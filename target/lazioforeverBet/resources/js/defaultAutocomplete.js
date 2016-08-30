$(document).ready(function() {
    $("input.autocompleteField").each(function() {
	var element = this;
	$(this).autocomplete({
	    delay : 500,
	    source : function(request, response) {

		var otherParams = $(element).attr("commaseparatedotherparamsvalues");
		var otherIds = $(element).attr("commaseparatedotherparamsids");
		var params = [];

		if (typeof otherIds != 'undefined') {
		    var ids = otherIds.split(",");
		    for (var i = 0; i < ids.length; i++) {
			params[i] = $("#" + ids[i]).val();
			if (params[i] == "")
			    params[i] = null;
		    }
		}
		var autocompleteObj = {
		    value : request.term,
		    otherParams : (typeof otherParams != 'undefined' ? otherParams : null),
		    idsValueList : (typeof params != 'undefined' ? params : null)
		};
		var jsonParam = JSON.stringify(autocompleteObj);

		$.ajax({
		    url : $(element).attr("url"),
		    cache : false,
		    dataType : "json",
		    contentType : 'application/json',
		    type : "POST",
		    data : jsonParam,
		    success : function(data, status, xhr) {
			response(data);
		    },
		    error : function(xhr, text, error) {
			var x = 1;
		    }
		});
	    },
	    select : function(event, ui) {
		$(element).val(ui.item.value);
		return false;
	    }
	}).autocomplete("instance")._renderItem = function(ul, item) {
	    return $("<li>").append(item.value + " - " + item.description + "</li>").appendTo(ul);
	};
    });
});