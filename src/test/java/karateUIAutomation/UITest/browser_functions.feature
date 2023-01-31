Feature: first UI test
  Background:
    * configure driver = { type: 'msedge' }

    
  Scenario: Login with credentials
  	Given driver 'https://www.saucedemo.com/'
   	And input('//*[@id=\'user-name\']', 'standard_user')
   	And input('//*[@id=\'password\']', 'secret_sauce')
   	When click('//*[@id=\'login-button\']')
   	Then match driver.title == 'Swag Labs'
   	