Feature: API creating and deleting feature

Background:
	* def requestPostPayload = 
	"""
		{
			"email":"megaman@gmail.com",
			"name":"Rockman Zero",
			"gender":"male",
			"status":"active"
		}
	"""
		
Scenario: Create a user with the given data
#	first we need to set the token
	* configure headers = {Authorization:'Bearer 55a89f8145a7ed327f2ba505ccb0ea322c6459260aeb0ef11a0d77efa2de27d9'}
	Given url baseUrl+'/public/v2/users'
	And request requestPostPayload
	When method POST
	Then status 201
	* print response
	And match $.id == '#present'

# fetch the user ID from responce	
	* def userId = $.id
	* print userId

# delete the user we just created	
#* configure headers = {Authorization:'Bearer 55a89f8145a7ed327f2ba505ccb0ea322c6459260aeb0ef11a0d77efa2de27d9'}
	Given url baseUrl+'/public/v2/users/'
	And path userId
	When method DELETE
	Then status 204
	* print response
	
# check that user is deleted
	Given url baseUrl+'/public/v2/users'
	And path userId
	When method GET
	Then status 404
	* print response
	And match $.message == "Resource not found"
	And match response.message == "Resource not found"

