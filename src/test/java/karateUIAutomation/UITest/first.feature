Feature: first UI test
  Background:
    * configure driver = { type: 'msedge' }
    
  Scenario: Login with credentials
  	Given driver 'https://www.saucedemo.com/'
  #	And driver.dimensions = { x: 0, y: 0, width: 600, height: 400 }
   	And input('//*[@id=\'user-name\']', 'standard_user')
   	And input('//*[@id=\'password\']', 'secret_sauce')
   	* delay(2000)
   	When click('//*[@id=\'login-button\']')
   	Then match driver.title == 'Swag Labs'
   	And match driver.url == "https://www.saucedemo.com/inventory.html"