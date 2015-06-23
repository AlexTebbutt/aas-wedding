<?php

class Aas_Validation_FormValidation
{
	
	public static function check_rsvp_code($rsvpcode)
	{
		
		$rsvpcode = strtolower($rsvpcode);
		$rsvpCodeOhs = str_replace('0', 'o', $rsvpcode);
		
		if($rsvpcode == 'aastw080815' || $rsvpCodeOhs == 'aastwo8o815') return true;
		
		return false;
		
	}

}