Feature: POST API feature

Background:
	* def random_string =
	"""
		function(length){
			let text = "";
			const pattern = "ADBCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
			for(let step=0; step<length; step++){
				text += pattern.charAt(Math.floor(Math.random() * pattern.length()));
			}
			return text;
		}
	"""
	* def randomEmail = random_string(10)+ "@gmail.com"
	
	* def requestPayload = 
	"""
		{
			"name":"Lir Green",
			"gender":"male",
			"status":"active"
		}
	"""
	* requestPayload.email = randomEmail
	
Scenario: Create a user with the given data
	first we need to set the token
	* configure headers = {Authorization:'Bearer 55a89f8145a7ed327f2ba505ccb0ea322c6459260aeb0ef11a0d77efa2de27d9'}
	Given url baseUrl+'/public/v2/users'
	And request requestPayload
	When method POST
	Then status 201
	* print response
	And match $.id == '#present'
	And match $.email == '#present'
