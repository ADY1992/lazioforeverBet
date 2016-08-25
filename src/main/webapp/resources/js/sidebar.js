$(document).ready(function() {
	var menuVisible = true;
	$('[data-toggle=offcanvas]').click(function() {
		$(this).find('i').toggleClass('glyphicon-chevron-right glyphicon-chevron-left');
		if (menuVisible) {
			$('#lg-menu').css('display', 'none');
			$('#xs-menu').css('display', 'block');
			menuVisible = false;
		} else {
			$('#lg-menu').css('display', 'block');
			$('#xs-menu').css('display', 'none');
			menuVisible = true;
		}
		$('#menu').toggleClass('col-xs-4 col-sm-3 col-md-2 col-lg-2').toggleClass('col-xs-0 col-sm-0 col-md-0 col-lg-0');
		$('#page').toggleClass('col-xs-8 col-sm-9 col-md-10 col-lg-10').toggleClass('col-xs-12 col-sm-12 col-md-12 col-lg-12');
	});
});