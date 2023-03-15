Feature: Local file access
  
  Scenario: Read json file
    * print "reading json file"
    * expectedResult=read('classpath:/userInput/input.json')
    * expectedResult.glossary.title = "Lir was here"
    * karate.write(expectedResult, 'classpath:/userInput/output.json')
    
    * print expectedResult
    * print karate.properties["file"]

