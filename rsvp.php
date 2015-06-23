<?php 
	include('perch/runtime.php');
	perch_layout('global.header', array(
		'activePage' => 'rsvp',
	));
	
?>

	 	<div class="container main-content">

	  	<div class="row">
	 	
				<div class="ten offset-by-one columns u-center">
					
					<h1><?php perch_content('RSVP Page Title'); ?></h1>
				
				</div>
				
	  	</div>
	  	
	  	<div class="row">
		  	
	  		<div class="ten offset-by-one columns">
		  		
		  		<?php perch_content('RSVP Welcome Copy'); ?>

	  		</div>
	  		
	  	</div>
	  	
	  	<div class="row">
		  	
	  		<div class="five offset-by-one columns">
						
					<h2><?php perch_content('Postal Address Title'); ?></h2>

					<?php perch_content('Postal Address'); ?>	
				
	  		</div>
		  	
	  	</div>

	  	<div class="row">
		  	
	  		<div class="ten offset-by-one columns">
		  		
		  		<?php perch_content('Kids Copy'); ?>

	  		</div>
	  		
	  	</div>

			<?php perch_content('RSVP Form'); ?>

		</div>

	</div>


<!-- End Document
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
<?php
	
	perch_layout('global.footer');

?>
