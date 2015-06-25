<?php 
	include('perch/runtime.php');
	perch_layout('global.header', array(
		'activePage' => 'gift-list',
	));
?>

	<div class="container main-content">

		<div class="row">
	 	
			<div class="ten offset-by-one columns u-center">
					
				<h1><?php perch_content('Gift List Page Title'); ?></h1>
					
			</div>
				
	  </div>
	  	
	  <div class="row">
		  	
	  	<div class="ten offset-by-one columns">
		  	
				<?php perch_content('Gift List Copy'); ?>	
					
			</div>

    </div>

  </div>

<!-- End Document
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
<?php
	
	perch_layout('global.footer');

?>