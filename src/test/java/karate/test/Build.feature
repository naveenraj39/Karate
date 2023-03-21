Feature: Build Study

Background:

  * configure driver = { type: 'chrome', addOptions: ["--remote-allow-origins=*"] }
  
Scenario: Search the Study
 Given driver 'https://data.stag.triomics.in/sites'
* def result = call read('Login.feature')
* def result = call read('StudySearch.feature')    
