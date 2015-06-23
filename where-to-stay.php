<?php 
	include('perch/runtime.php');
	perch_layout('global.header', array(
		'activePage' => 'where-to-stay',
	));
?>

	<div class="container main-content">

		<div class="row">
	 	
			<div class="ten offset-by-one columns u-center">
					
				<h1><?php perch_content('Where To Stay Page Title'); ?></h1>
					
			</div>
				
	  </div>
	  	
	  <div class="row">
		  	
	  	<div class="ten offset-by-one columns">
		  	
				<?php perch_content('Where To Stay Copy'); ?>	
					
			</div>

    </div>

  </div>

<!-- End Document
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
<?php
	
	perch_layout('global.footer');

?>
