Feature: Loop train
 
  Scenario: verify username info frfom response
  	Given url 'https://gorest.co.in/public/v1/users'
  	When method GET
  	Then status 200
  #	And def sampleResponseId = 3
  #	And eval if(sampleResponseId != 2) karate.fail('Incorrect ID')
    And def outputData = []
    And eval for(var i=0; i<response.data.lenght; i++) if(response.data[i].name.endsWith("Dhatri Varman")) outputData.add(response.data[i])
 		* print outputData


  
