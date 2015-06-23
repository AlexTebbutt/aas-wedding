<?php 
	include('perch/runtime.php');
	perch_layout('global.header', array(
		'activePage' => 'home',
	));
?>

<div class="container main-content">

	<div class="row">
		
    <div class="ten offset-by-one columns">

			<div class="u-center s-and-a heading">

				<h1>Shikha<br /><span>&</span> Alex</h1>
				
				<p>08 . 08 . 2015</p>

			</div>
		
		</div>

		<div class="row">

			<div class="five offset-by-one columns">
				
				<?php perch_content('Home Copy'); ?>

			</div>
			
			<div class="five columns">
				
				<?php perch_content('Home Image'); ?>				
				
			</div>
					
		</div>

  </div>

</div>
	
<!-- End Document
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
<?php
	
	perch_layout('global.footer');

?>
