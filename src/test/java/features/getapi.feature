Feature: GET API Feature

Scenario: Get user details success
	Given url 'https://reqres.in/api/users/2'
	When method GET
	Then status 200
	 
	#We are printing the Response of the API using the print keyword#
	Then print response