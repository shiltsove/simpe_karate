Feature: Local file access
  
  Scenario: Read json file
    * print "reading json file"
    * expectedResult=read('classpath:/fileWork/example.json')
    * print expectedResult
