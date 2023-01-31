Feature: Get API with query parameters

#Scenario: Get male users
#	* def query  = {gender:'male', status:'active'}
#
#	Given url baseUrl+'/public/v2/users'
#	And params query
#	When method GET
#	Then status 200
#	* print response
	
Scenario: Count users in response
	* def query = {gender:'male'}

	Given url baseUrl+'/public/v2/users'
	And params query
	When method GET
	Then status 200
	* def jsonResponse = response
	* def userCount = jsonResponse.length
	* print userCount