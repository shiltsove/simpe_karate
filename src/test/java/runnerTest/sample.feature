Feature: print hello world feature

Scenario: Hello World scenario

	* print "hello","world","three"
	* print "Do I need to install all this in linux?"
	* print 'I need practice, and I need to test my project'
	
Scenario: Variable scenario

	* def level = 3
	* def dnd_class = 'Bard'
	* def boolv = 3 < 1 
	* assert level == '3'

	* print "You are bard",dnd_class,'HP:' + level*5
	* print boolv
	
	