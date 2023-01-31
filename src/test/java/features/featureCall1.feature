Feature: Try to call from itself

  @tag1
  Scenario: scenario 1
    * print "scenario 1"

  @tag2
  Scenario: scenario 2
    * print "scenario 2"
    * def result = call read('featureCall1.feature@tag1')