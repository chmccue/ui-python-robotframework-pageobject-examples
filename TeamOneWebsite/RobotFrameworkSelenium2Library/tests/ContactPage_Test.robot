*** Settings ***
| Documentation | Feature:  Team One Contact Page Test Cases. | 
| Resource      | ../pages/ContactPage.robot | 
| Suite Setup | Setup Commands, Team One Contact Page | 
| Suite Teardown | Teardown Commands | 
| Test Setup | Custom Reload page | ${T1 CONTACT PAGE URL} | 

*** Test Cases ***

| Scenario: Team One logo, Address and office hours are present on page. | 
| | Given user is on contact page | 
| | Then Team One logo, Address and office hours are present on page | 

| Scenario: Team One phone number is present and is a hyperlink on page.
| | Given user is on contact page |
| | Then Team One phone number is present and is a hyperlink on the page |

| Scenario: Get Directions link is clickable on page. | 
| | Given user is on contact page | 
| | When user clicks Get Directions link | 
| | Then user is taken to Google Map page of Team One Address | 

| Scenario: Team One info email is present and is a hyperlink on page. | 
| | Given user is on contact page | 
| | Then Team One info email is present and is a hyperlink on the page | 

#| *Test Case* | *Grey Share section* | *grey share button* | *expected page title* | *expected page url* |  
#| Scenario: Grey Share 1 | grey share icon | ${TwitterGrayButtonCSS} | ${T1TwitterPageTitle} | ${T1TwitterURL} | 
#| Scenario: Grey Share 2 | grey share icon | ${FacebookGrayButtonCSS} | ${T1FacebookPageTitle} | ${T1FacebookURL} | 
#| Scenario: Grey Share 3 | grey share icon | ${GooglePlusGrayButtonCSS} | ${T1GooglePlusPageTitle} | ${T1GooglePlusURL} | 
#| Scenario: Grey Share 4 | grey share icon | ${LinkedInGrayButtonCSS} | ${T1LinkedInPageTitle} | ${T1LinkedInURL} |  
#| Scenario: Grey Share 5 | grey share icon | ${InstagramGrayButtonCSS} | ${T1InstagramPageTitle} | ${T1InstagramURL} | 

| Scenario: Grey Share menu: Twitter | 
| | Verify grey share button click and link is correct - Twitter | 

| Scenario: Grey Share menu: Facebook | 
| | Verify grey share button click and link is correct - Facebook | 

| Scenario: Grey Share menu: Google Plus | 
| | Verify grey share button click and link is correct - Google Plus | 

| Scenario: Grey Share menu: Linked In | 
| | Verify grey share button click and link is correct - Linked In | 

| Scenario: Grey Share menu: Instagram | 
| | Verify grey share button click and link is correct - Instagram | 

| Scenario: Google map image of Team One Address is present on page. | 
| | Given user is on contact page | 
| | When user scrolls page to Google Map graphic | 
| | Then Google Map is present and shows Team One Address | 

| Scenario: New Business image and director details are present. | 
| | Given user is on contact page |
| | When user scrolls to Inquiries section | 
| | Then New Business image and director details are present | 
| | And New Business director's phone number and email are hyperlinks | 

| Scenario: Press & PR image and director details are present. | 
| | Given user is on contact page |
| | When user scrolls to Inquiries section | 
| | Then Press & PR image and director details are present | 
| | And Press & PR director's phone number and email are hyperlinks | 

| Other Office section - New York | 
| | Verify office info is correct and directions button link is correct - New York | 

| Other Office section - Washington DC | 
| | Verify office info is correct and directions button link is correct - Washington DC | 

| Other Office section - Atlanta | 
| | Verify office info is correct and directions button link is correct - Atlanta | 

| Other Office section - Chicago | 
| | Verify office info is correct and directions button link is correct - Chicago | 




#| *Test Case* | *office info* | *image* | *text loc* | *city* | *address* | *phone loc* | *phone* | *directions button* | *address page title* | *address url* | 
#| Scenario: New York Office | other office info | ${T1NewYorkOfficeImageCSS} | ${T1NewYorkOfficeTextCSS} | ${T1NewYorkOfficeCityText} | ${T1NewYorkOfficeAddressText} | ${T1NewYorkOfficePhoneCSS} | ${T1NewYorkOfficePhoneText} | ${T1NewYorkDirectionsButtonCSS} | ${T1NewYorkAddressPageTitle} | ${T1NewYorkAddressPageURL} | 
#| Scenario: Washington DC Office | other office info | ${T1WashingtonDCOfficeImageCSS} | ${T1WashingtonDCOfficeTextCSS} | ${T1WashingtonDCOfficeCityText} | ${T1WashingtonDCOfficeAddressText} | ${T1WashingtonDCOfficePhoneCSS} | ${T1WashingtonDCOfficePhoneText} | ${T1WashingtonDCDirectionsButtonCSS} | ${T1WashingtonDCAddressPageTitle} | ${T1WashingtonDCAddressPageURL} | 
#| Scenario: Atlanta Office | other office info | ${T1AtlantaOfficeImageCSS} | ${T1AtlantaOfficeTextCSS} | ${T1AtlantaOfficeCityText} | ${T1AtlantaOfficeAddressText} | ${T1AtlantaOfficePhoneCSS} | ${T1AtlantaOfficePhoneText} | ${T1AtlantaDirectionsButtonCSS} | ${T1AtlantaAddressPageTitle} | ${T1AtlantaAddressPageURL} | 
#| Scenario: Chicago Office | other office info | ${T1ChicagoOfficeImageCSS} | ${T1ChicagoOfficeTextCSS} | ${T1ChicagoOfficeCityText} | ${T1ChicagoOfficeAddressText} | ${T1ChicagoOfficePhoneCSS} | ${T1ChicagoOfficePhoneText} | ${T1ChicagoDirectionsButtonCSS} | ${T1ChicagoAddressPageTitle} | ${T1ChicagoAddressPageURL} | 


