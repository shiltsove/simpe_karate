Feature: Swithcing between html documents added to main page useing iframe

  Scenario: w3shool example
    Given driver "https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_iframe"
    * delay(1000)
    And switchFrame("//iframe[@name='iframeResult']")
    And switchFrame("//iframe[@title='W3Schools Free Online Web Tutorials']")
    And click("//*[@id='navbtn_menu']")
    * delay(1000)
