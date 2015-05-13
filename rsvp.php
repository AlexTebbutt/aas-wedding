<?php include('_/includes/header.php'); ?>

	<div class="container">

		<img class="u-max-full-width" src="_/images/rsvp.jpg" alt="rsvp" />

    <div class="row">

      <div class="twelve column white">
   
        <p class="roundal rsvp-icon"><img src="_/images/rsvp-icon.png" alt="rsvp-icon" width="60" height="60" /></p>

				<div class="announcement">
					
					<p>Hi there!</p>
					
					<p>We're really looking forward to welcoming you all on our big day, we just need to know that you're able to joing us.</p>
					
					<p>If you can fill out the form below that would be great. The RSVP code is included on the invite you got in the post. It's there to stop unwanted guests inviting themselves!</p>
					
					<p>If you would like to send a card or anything via old fashioned mail can you send it to the following address</p>
					
					<div class="address">

						<p class="addressees">Tom & Frances Tebbutt</p>					
						
						<p class="house-name">The Barley House</p>
						
						<p class="street">Coram Street</p>
						
						<p class="town">Hadleigh</p>
						
						<p class="county">Suffolk</p>
						
						<p class="post-code">IP7 5NR</p>
						
					</div>
					
				</div>
        
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

					 	<div id="dietary-requirements" class="twelve column">
					 	
						 	 <label for="fave-tune">Fancy adding a tune to our playlist?</label>

				      <input class="u-full-width" type="text" placeholder="What's going to get you dancing...?" id="fave-tune">

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

<!-- End Document
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
<?php
	
	include ('_/includes/footer.php');

?>
