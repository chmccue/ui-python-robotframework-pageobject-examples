*** Settings ***
| Documentation  | Feature:  Team One Contact Page Test Cases. | 
| Resource       | ../globals/global_keywords.robot | 
| Resource       | ../globals/global_variables.robot | 
| Suite Setup    | Setup Commands | 
| Suite Teardown | Teardown Commands | 
#| Test Setup     | Custom Reload page | ${T1 HOME PAGE URL} | 

*** Test Cases ***        

| Scenario: Image source links are pinged on pages to check for missing source links | 
| | Image source links are pinged on pages to check for missing source links | 


#| Scenario: Footer Nav Content including Share Buttons and Legal Text is present | 
#| | Footer Nav Content including Share Buttons and Legal Text is present | 


*** Keywords ***

| Image source links are pinged on pages to check for missing source links | 
| | :FOR | ${link} | IN | @{T1 PAGE URLS LIST} | 
| | | Go To | ${BASE URL}${link} | 
| | | Verify Correct Link URL | ${link} | 
| | | Scan For Broken Source Links | 

| Scan For Broken Source Links | 
| | Run Keyword And Continue On Failure | Page Should Not Contain Element | xpath=(//img[@src='']) | 



| Footer Nav Content including Share Buttons and Legal Text is present | 
| | :FOR | ${link} | IN | @{T1 PAGE URLS LIST} | 
| | | Go To ${BASE URL}${link} | 
| | | | :FOR ${value} | IN | @{T1 FOOTER NAV ELEMENTS LIST} | 
| | | | | Wait Until Element Is Visible | ${value} | 
