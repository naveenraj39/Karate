Feature: Search the study

Scenario: Finding the study

When input("//*[@type='text']", "Dr. Alit EDC")
    * screenshot()
    * delay(4000) 
    * waitUntil("document.readyState == 'complete'")
    Then waitForEnabled("div[class='MuiGrid-root MuiGrid-container MuiGrid-item MuiGrid-justify-content-xs-center'] div:nth-child(1) div:nth-child(1) div:nth-child(3)").click()
    * waitUntil("document.readyState == 'complete'")
    * delay(5000)
    * screenshot()
     # Study Build 
    And print driver.title
    When mouse(".MuiGrid-root.MuiGrid-container.MuiGrid-item.MuiGrid-grid-xs-10.MuiGrid-grid-sm-10").click()
    Then click("//span[normalize-space()='Build Study']")
    * waitUntil("document.readyState == 'complete'")