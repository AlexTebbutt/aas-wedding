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
 
  /* Check if fields are set, if not hide any fields that need hiding */


  
  if($('select#form1_can-you-attend').val() == 'Yes')
  {
	  
	  console.log($('select#form1_can-you-attend').val());
	  
	  $('div#able-to-attend').show();
	  
  } else {
	  
	  $('div#able-to-attend').hide();
	  
  }

  if($('select#form1_dietary-requirements-question').val() == 'Yes')
  {
	  
	  $('div#dietary-requirements').show();
	  
  } else {
	  
	  $('div#dietary-requirements').hide();
	  
  }

});


/* Hide / show relevant input box depending on user selection of radio group */
$('select#form1_can-you-attend').change(function()
{

  $('div#able-to-attend').animate({
	  height: "toggle",
	  opacity: "toggle"
	});
	
	if ($('select#form1_dietary-requirements-question').val() === 'Yes')
	{
			
		$('div#dietary-requirements').animate({
		  height: "toggle",
		  opacity: "toggle"
		});
		
	}

});

$('select#form1_dietary-requirements-question').change(function()
{

  $('div#dietary-requirements').animate({
	  height: "toggle",
	  opacity: "toggle"
	});

});
