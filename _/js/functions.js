/*
 * Viewport - jQuery selectors for finding elements in viewport
 *
 * Copyright (c) 2008-2009 Mika Tuupola
 *
 * Licensed under the MIT license:
 *   http://www.opensource.org/licenses/mit-license.php
 *
 * Project home:
 *  http://www.appelsiini.net/projects/viewport
 *
 */
(function($) {
    
})(jQuery);

$(document).ready(function() {
 
  /* Hide any fields that need hiding */
  
  $('div#able-to-attend, div#dietary-requirements').hide();

});


/* Hide / show relevant input box depending on user selection of radio group */
$('select#can-you-attend').change(function()
{

  $('div#able-to-attend').animate({
	  height: "toggle",
	  opacity: "toggle"
	});
	
	if ($('select#dietary-requirements-question').val() === 'Yes')
	{
			
		$('div#dietary-requirements').animate({
		  height: "toggle",
		  opacity: "toggle"
		});
		
	}

});

$('select#dietary-requirements-question').change(function()
{

  $('div#dietary-requirements').animate({
	  height: "toggle",
	  opacity: "toggle"
	});

});
