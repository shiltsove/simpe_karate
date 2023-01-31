Feature: Choose option for select elements 
	option on text
	based on value
	based on index
	
  Scenario: Classic select
    Given driver 'https://www.salesforce.com/au/form/signup/freetrial-sales/'
    * delay(2000)
    # select by exact display text | {} marks the search mode for matching data
    And select("//*[@name='UserTitle']", '{}Sales Manager')
    * delay(2000)
    # select by part display text | {^} marks the search mode for matching data
    And select("//*[@name='UserTitle']", '{^}Operations')
    * delay(2000)
    # select by value 
    And select("//*[@name='UserTitle']", 'IT_Manager_AP')
    * delay(2000)
    
    # select by index | do not support 0 and -1 index
    And select("//*[@name='UserTitle']", 2)
    * delay(2000)
    