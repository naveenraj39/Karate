  Feature: Login

  Scenario: Login with valid 
    
    * waitUntil("document.readyState == 'complete'")
    When input("//*[@type='text']", "alit.edc@mailinator.com")
    And mouse('.MuiButton-label').click()
    * waitUntil("document.readyState=='complete'")
    Then input('input[type=password]', 'Hello@123')
    And mouse('.MuiButton-label').click()
    * delay(5000)