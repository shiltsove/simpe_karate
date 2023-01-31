Feature: GET API Feature

Scenario: Get user details success
	Given url baseUrl+'/public/v2/users'
	And path '204419'
	When method GET
	Then status 200
#	* match response.status == "inactive"
	# responce is predetermined variable for requests respose	
	* print response.status
	
	
#Scenario: Get user details failure
#	Given url 'https://gorest.co.in/public/v2/users'
#	And path '303030'
#	When method GET
#	Then status 404