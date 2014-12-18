/*
	Function Name: checkLength
	Arguments: text,min?,max?
	Returns:
		false if text has fewer than min characters
		false if text has more than max characters
		true otherwise
*/
function checkLength(text, min, max){
	min = min || 1;
	max = max || 10000;

	if (text.length < min || text.length > max) {
		return false;
	}
	return true;
}


	function compareValues(val1,val2){
		if ( val1 == val2){
			return 0;
		}else if(val1 > val2){
			return -1;
		}else{
			return 1;
		}
	}
	function checkEmail(email){
	if (!checkLength(email, 6)) {
		return false;
	} else if (email.indexOf("@") == -1) {
		return false;
	} else if (email.indexOf(".") == -1) {
		return false;
	}
	/* THIS LAST ELSE IF FROM CHALLENGE */
	else if (email.lastIndexOf(".") < email.lastIndexOf("@")){/*This checks to see if the period (.) comes before the at (@) using lastIndexOf*/
		return false;
	}
	return true;
}
	/*This function was not working.  Used solution e-mail function.*/
	/*function checkEmail(email){
		if (email.length < 6){
			return false;
		} 
		var i=0;
		for (email.charAt(i); i < email.length; i++){
			if (email.charAt(i) == '@'){
				var atcount=atcount + 1;
				
			}else if (email.charAt(i)=='.'){
				var percount=percount + 1;
				
			}
			if ((atcount > 1 || atcount == 0 || percount==0)&& i == email.length-1){
				return false;
			}
		}
		return true;
	}*/
	/*(SAVE THIS)Function Name: checkEmail
	Arguments: email
	Returns:
		false if email has fewer than 6 characters
		false if email does not contain @ symbol 
		false if email does not contain a period (.)
		true otherwise
	*/
