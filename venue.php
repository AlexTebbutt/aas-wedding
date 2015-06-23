<?php 
	include('perch/runtime.php');
	perch_layout('global.header', array(
		'activePage' => 'venue',
	));
	
?>

	<div class="container main-content">

		<div class="row">
	 	
			<div class="ten offset-by-one columns u-center">
					
				<h1><?php perch_content('Venue Page Title'); ?></h1>
			
			</div>
				
	  </div>
	  	
	  <div class="row">
		  	
	  	<div class="ten offset-by-one columns">
		  	
		 		<?php perch_content('Venue Welcome Copy'); ?>

	  	</div>
		  	
	  </div>
	  	
	  <div class="row">

			<div class="ten offset-by-one columns">
					
				<h2><?php perch_content('Venue Address Title'); ?></h2>

				<?php perch_content('Venue Address'); ?>
					
			</div>
						
		</div>
				
		<div class="row">
				
			<div class="ten offset-by-one columns">
					
				<?php perch_content('How To Get There Copy'); ?>

			</div>
					
		</div>
									
	</div>

<!-- End Document
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
<?php
	
	perch_layout('global.footer');

?>
