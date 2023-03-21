

  Feature: Login to EDC
  
  Background: 
  
  * configure driver = { type: 'chrome', addOptions: ["--remote-allow-origins=*"] }
   
   @login
  Scenario: Login with valid credentials
    Given driver 'https://data.stag.triomics.in/login'
    * waitUntil("document.readyState == 'complete'")
    When input("//*[@type='text']", "alit.edc@mailinator.com")
    And mouse('.MuiButton-label').click()
    * waitUntil("document.readyState=='complete'")
    Then input('input[type=password]', 'Hello@123')
    And mouse('.MuiButton-label').click()
    * delay(5000)
    
    @ignore
    Scenario: Site
    #* call read('@login')
    * waitUntil("document.readyState == 'complete'")
    Then input("//*[@type='text']", "Dr. Alit EDC")
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
    #* call read('@Test2')
    
    @ignore
    Scenario: Basic Details
    Then click("//span[normalize-space()='Basic Details']")
    Then click("//span[normalize-space()='Site Selection']")
    And click("//*[text()='Add Site']")
    * delay(5000)
    And mouse("//*[text()='Cancel']").click()
    * delay(3000)
    Then mouse("//span[normalize-space()='User Access Management']").click()
    And click("//span[normalize-space()='Add User']")
    Then input("//*[@type='text']", "Naveen")
    * delay(3000)
    And clear("//*[@type='text']")
    * delay(4000)
    Then click("//*[text()='Add New Member']")
    * delay(4000)
    And mouse("//*[text()='Cancel']").click()
    # Permission Access
    Then mouse("//span[normalize-space()='User Access Management']").click()
    And mouse("/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[5]/div[1]/button[1]").click()
    And mouse("//span[normalize-space()='Site Level']").click()
    And mouse("//span[normalize-space()='Edit']").click()
    * delay(3000)
    Then mouse("//*[@aria-haspopup='listbox']").click()
    * delay(10000)
    And mouse("//*[text()='Project Manager']").click()
    * delay(4000)
    Then mouse("//*[@aria-haspopup='listbox']").click()
    * delay(5000)
    And mouse("//*[text()='Admin']").click()
    * delay(5000)
    Then mouse("//*[@aria-haspopup='listbox']").click()
    And mouse("//*[text()='Primary Investigator']").click()
    * delay(5000)
    Then mouse("//*[text()='Update Permissions']").click()
    * screenshot()
    * delay(5000)
    Then mouse("//*[text()='All Users']").click()
    * delay(5000)
    And click("//*[text()='Build']")
    * delay(5000)
    * call read('@Test3')
    
    @ignore
    Scenario: Form builder
    Then mouse("//span[normalize-space()='Form Builder']").click()
    * delay(5000)
    And mouse("//*[text()='+ Add Cohort']").click()
    Then input("//*[text()='Name of Cohort:']//ancestor::div[3]//descendant::div[6]//input", "New")
    * delay(2000)
    And input("//*[text()='Description:']//ancestor::div[3]//descendant::div[6]//input", "Arms")
    And mouse("//*[text()='+ Add another arm']").click()
    Then input("//*[text()='Name:']//ancestor::div[2]//descendant::div[5]//input", "Weight")
    And input("//*[text()='Weightage:']//ancestor::div[2]//descendant::div[5]//input", "50")
    * delay(3000)
    Then mouse("//*[text()='Add Cohort']//parent::button").click()
    * delay(5000)
    And mouse("//*[text()='New']//parent::div//following-sibling::div//child::div[2]").click()
   
    
    

