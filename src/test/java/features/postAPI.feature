Feature: POST API feature

Background:
	* def requestPayload = 
	"""
		{
			"name":"Lir Green12",
			"email":"lir_in_nest12@cave.com",
			"gender":"male",
			"status":"active"
		}
	"""

Scenario: Create a user with the given data
#	first we need to set the token
	* configure headers = {Authorization:'Bearer 55a89f8145a7ed327f2ba505ccb0ea322c6459260aeb0ef11a0d77efa2de27d9'}
	Given url baseUrl+'/public/v2/users'
	And request requestPayload
	When method POST
	Then status 201
	* print response
	And match $.id == '#present'
	And match $.name == '#present'
	And match $.name == 'Lir Green12'
