Feature: Local file access
  
  Scenario: Read json file
    * print "reading json file"
    * expectedResult=read('classpath:/userInput/input.json')
    * print expectedResult
    * print karate.properties["file"]

