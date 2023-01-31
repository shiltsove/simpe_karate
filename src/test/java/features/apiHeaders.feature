Feature: GET API headers feature

#Scenario: pass the user request with headers
#	Given header Content-Type = 'text/xml;charset=ISO-8859-1'
#	And url baseUrl+'/public/v2/users'
#	And path '3'
#	When method GET
#	Then status 200
	
#Scenario: pass the user request with headers alt
#	* def request_headers = {Content-Type:'text/xml;charset=ISO-8859-2'}
#	Given headers request_headers
#	And url baseUrl+'/public/v2/users'
#	And path '3'
#	When method GET
#	Then status 200

Scenario: pass the user request with headers alt
	* configure headers = {Content-Type:'text/xml;charset=ISO-8859-3'}
	Given url baseUrl+'/public/v2/users'
	And path '3'
	When method GET
	Then status 200