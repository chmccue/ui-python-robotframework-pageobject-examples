*** Settings ***
| Documentation | Team One Home Page Test Cases. | 
| Resource      | ../pages/HomePage.robot | 
| Suite Setup | Setup Commands, Team One Home Page | 
| Suite Teardown | Teardown Commands | 
| Test Setup | Custom Reload page | ${T1 HOME PAGE URL} | 

*** Test Cases ***

| Scenario: Launching the Remarkable graphic is present on page. | 
| | Given user loads homepage | 
| | Then Launching the Remarkable graphic is present and visible on page | 

| Scenario: Clicking Read More About Team One button. | 
| | Given user loads homepage | 
| | When user clicks Read More About Team One button | 
| | Then user is taken to About page | 

| Scenario: Clicking Lexus Facebook 1000 button. | 
| | Given user loads homepage | 
| | And scrolls to Lexus Facebook 1000 image | 
| | When user clicks Lexus Facebook 1000 See More button | 
| | Then user is taken to Lexus Facebook 1000 client page | 

| Scenario: Clicking Haagen Daaz Name of Real button. | 
| | Given user loads homepage | 
| | And scrolls to Haagen Daaz Name of Real image | 
| | When user clicks Haagen Daaz Name of Real See More button | 
| | Then user is taken to Haagen Daaz Name of Real client page | 

| Scenario: Clicking 2k Evolve button. | 
| | Given user loads homepage | 
| | And scrolls to 2k Evolve image | 
| | When user clicks 2k Evolve See More button | 
| | Then user is taken to 2k Evolve client page | 

| Scenario: New Business Inquiries text and elements present. | 
| | Given user loads homepage | 
| | And scrolls to New Business Inquiries text | 
| | Then user confirms that New Business title text is present | 
| | And New Business Director name and email button are present | 

| Scenario: Press Inquiries text and elements present. | 
| | Given user loads homepage | 
| | And scrolls to Press Inquiries text | 
| | Then user confirms that Press Inquiries title text is present | 
| | And Press Inquiries Director name and email button are present | 

| Scenario: Employment Opportunities text is present and clicking to Careers page. | 
| | Given user loads homepage | 
| | And scrolls to Employment Opportunities text | 
| | And user confirms that Employment Opportunities title text is present | 
| | When user clicks See Our Open Positions button | 
| | Then user is taken to Careers page | 

| Scenario: Experts In The Industry section: Automotive Tile | 
| | Verify Tile click and link is correct - Automotive Tile | 

| Scenario: Experts In The Industry section: Consumer Electronics Tile | 
| | Verify Tile click and link is correct - Consumer Electronics Tile | 

| Scenario: Experts In The Industry section: Consumer Packaged Goods Tile | 
| | Verify Tile click and link is correct - Consumer Packaged Goods Tile | 

| Scenario: Experts In The Industry section: Entertainment Tile | 
| | Verify Tile click and link is correct - Entertainment Tile | 

| Scenario: Experts In The Industry section: Financial Services Tile | 
| | Verify Tile click and link is correct - Financial Services Tile | 

| Scenario: Experts In The Industry section: Gaming Tile | 
| | Verify Tile click and link is correct - Gaming Tile | 

| Scenario: Experts In The Industry section: Sports Tile | 
| | Verify Tile click and link is correct - Sports Tile | 

| Scenario: Experts In The Industry section: Travel And Hospitality Tile | 
| | Verify Tile click and link is correct - Travel And Hospitality Tile | 


*** Comment ***

User story runs for all the noted tile variables below.
| Scenario: Experts In The Industry Click Tile. | 
| | Given user loads homepage | 
| | And scrolls to Experts in the Industry section | 
| | user clicks "tile button" | 
| | user is taken to "tile link" | 

#| *Test Case* | *Experts In The Industry* | *tile button*            | *expected tile link* | 
| Scenario: Tile 1 | Click Tile. | ${AutomotiveTabXpath}            | ${AutomotiveWorkLinkURL} | 
| Scenario: Tile 2 | Click Tile. | ${ConsumerElectronicsTabXpath}   | ${ConsumerElectronicsWorkLinkURL} | 
| Scenario: Tile 3 | Click Tile. | ${ConsumerPackagedGoodsTabXpath} | ${ConsumerPackagedGoodsWorkLinkURL} | 
| Scenario: Tile 4 | Click Tile. | ${EntertainmentTabXpath}         | ${EntertainmentWorkLinkURL} | 
| Scenario: Tile 5 | Click Tile. | ${FinancialServicesTabXpath}     | ${FinancialServicesWorkLinkURL} | 
| Scenario: Tile 6 | Click Tile. | ${GamingTabXpath}                | ${GamingWorkLinkURL} | 
| Scenario: Tile 7 | Click Tile. | ${SportsTabXpath}                | ${SportsWorkLinkURL} | 
| Scenario: Tile 8 | Click Tile. | ${TravelAndHospitalityTabXpath}  | ${TravelAndHospitalityWorkLinkURL} | 

