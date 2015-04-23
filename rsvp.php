<?php include('_/includes/header.php'); ?>

	<div class="banner rsvp-image">

    <div class="row">

      <div class="banner-title twelve column">

        <h1>Main Title</h1>
        
        <p>Subtitle</p>

      </div>

    </div>	

	</div>

	<p class="roundal behind shadow"></p>	
	
	<div class="shadow top">

	  <div class="container">
	
	    <div class="row">
	
	      <div class="twelve column white">
	   
	        <p class="roundal rsvp-icon"><img src="_/images/rsvp-icon.png" alt="rsvp-icon" width="60" height="60" /></p>

					<div class="announcement">
	        
		        <form>

<!-- We need: Email address, Name, I am / am not coming there will be x of us, I am bringing kids, how many kids, message -->

						  <div class="row">

						    <div class="six columns">

						      <label for="email-address">Your email</label>

						      <input class="u-full-width" type="email" placeholder="test@mailbox.com" id="email-address">

						    </div>

						    <div class="three columns">

						      <label for="can-you-attend">Are you able to attend?</label>

						      <select class="u-full-width" id="can-you-attend">

						        <option value="No">Sorry, can't come along.</option>

						        <option value="Yes">Yay, can't wait!</option>

						      </select>

						    </div>

						    <div class="three columns">

						      <label for="rsvp-code">RSVP Code</label>

						      <input class="u-full-width" type="email" placeholder="Found on your invite card" id="rsvp-code">

						    </div>

						  </div>
						  
						 	<div id="able-to-attend">
							 	 
							  <div id="row">
								  
								  <div class="four columns">
								  
									  <label for="number-of-attendees">How many of you are coming?</label>
									  
									  <select class="u-full-width" id="number-of-attendees">

							        <option value="1">1</option>
	
							        <option value="2">2</option>
							        
							        <option value="3">3</option>
							        
							        <option value="4">4</option>
							        
							        <option value="5">5</option>
							        
							        <option value="6">6</option>
							        
							        <option value="7">7</option>
							        
							        <option value="8">8</option>
							        
							        <option value="9">9</option>
							        
							        <option value="10">10</option>
	
							      </select>
		
								  </div>
								  
									<div class="four columns">
										  							  
									  <label for="number-of-kids">And how many are kids?</label>
									  
									  <select class="u-full-width" id="number-of-kids">

							        <option value="0">0</option>

							        <option value="1">1</option>
	
							        <option value="2">2</option>
							        
							        <option value="3">3</option>
							        
							        <option value="4">4</option>
							        
							        <option value="5">5</option>
							        
							        <option value="6">6</option>
							        
							        <option value="7">7</option>
							        
							        <option value="8">8</option>
	
							      </select>
		
								  </div>
								  								  						 	
								 	<div class="four columns">
									  
									  <label for="dietary-requirements-question">Any dietary requirements?</label>
									  
									  <select class="u-full-width" id="dietary-requirements-question">

							        <option value="No">No</option>

							        <option value="Yes">Yes</option>
	
							      </select>									 	
									 								 	
								 	</div>
								  
							  </div>
						  
						 	</div>
						 	

						  <div id="row">

							 	<div id="dietary-requirements" class="twelve column">
							 	
								 	<label for="dietary-requirements-message">What do you / don't you or your +1s eat?</label>
								 	
								 	<textarea class="u-full-width" placeholder="Well, we don't eat.... but we do eat...." id="dietary-requirements-message"></textarea>

							  </div>
							 	
						 	</div>
							 	
						  <div id="row">
								  
							 	<div id="final-message" class="twelve column">

								  <label for="message">Let us know if there's anything else?</label>
		
								  <textarea class="u-full-width" placeholder="Hi Alex & Shikha..." id="message"></textarea>
		
								  <label class="example-send-yourself-copy">
		
								    <input type="checkbox">
		
								    <span class="label-body">Send a copy to yourself</span>
		
								  </label>
	
							  </div>
						  
						 	</div>

						  <input class="button button-primary" type="submit" value="Submit">

						</form>
	
					</div>

	      </div>
	
	    </div>
	
	  </div>
	  
	</div>

<!-- End Document
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
<?php
	
	include ('_/includes/footer.php');

?>
