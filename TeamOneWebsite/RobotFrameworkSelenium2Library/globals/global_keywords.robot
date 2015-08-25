*** Settings ***
| Library | Selenium2Library | 
| Library | BuiltIn | 
| Library | String | 
| Library | Collections | 
| Resource | constants.robot | 

*** Keywords ***
# Setup and Teardown Commands************
| Setup Commands | 
| | Setup Commands, production | 

| Setup Commands, production | 
| | Set Selenium Speed | ${TEST SPEED} |
| | Open Browser | ${BASE URL} | ${BROWSER} | 
| | Log | Browser under test: ${BROWSER} | 
#| | Go To | ${BASE URL} | 
#| | Maximize Browser Window | 
| | Run Keyword If | '${BROWSER}' == 'Ie' | Set Window Size | 1200 | 768 | 
#| | Run Keyword If | '${BROWSER}' == 'Ie' | Reload Page | 
| | Run Keyword Unless | '${BROWSER}' == 'Ie' | Maximize Browser Window | 


| Setup Commands, desired capabilities | 
| | Open Browser | ${BASE URL} | ${BROWSER} | desired_capabilities=webdriver.Remote("http://localhost:4444/wd/hub", webdriver.DesiredCapabilities.HTMLUNIT) | 

| Custom Reload page | [Arguments] | ${page url} | 
| | Go To | ${BASE URL}${page url} | 
#| | Run Keyword If | '${BROWSER}' == 'Ie' | Go To | ${BASE URL}${page url} | 
| | Log | ${BASE URL}${page url} | 
#| | Run Keyword If | '${BROWSER}' == 'Ie' | Reload Page | 
#| | Run Keyword If | '${BROWSER}' == 'Ie' | Set Window Size | 1200 | 768 | 
| | Maximize Browser Window | 


| Teardown Commands |
#| | Close Browser |
| | Close All Browsers | 


# Global Keywords
| Verify Correct Link Title | [Arguments] | ${Expected page title} | 
| |	${Actual page title} | Get Title |
| |	Should Contain | ${Actual page title} | ${Expected page title} | 
| |	Should Not Contain | ${Actual page title} | 404 | 
| |	Should Not Contain | ${Actual page title} | Error | 

| Verify Correct Link URL | [Arguments] | ${Expected page url} | 
| | ${Actual page url} | Get Location | 
| | Log | ${Actual page url} | 
| | Log | ${Expected page url} | 
# Regular expression url replacement for Firefox 
| | ${firefox url update} | Replace String Using Regexp | ${Expected page url} | [ ] | %20 | 
| | Run Keyword If | '${BROWSER}'=='Firefox' | Should Contain | ${Actual page url} | ${firefox url update} | 
| | Run Keyword Unless | '${BROWSER}'=='Firefox' | Should Contain | ${Actual page url} | ${Expected page url} | 
| | Run Keyword Unless | '${BROWSER}' == 'Ie' | Page Should Not Contain | The page you requested could not be found. This location may not be current. | 
| | Run Keyword Unless | '${BROWSER}' == 'Ie' | Page Should Not Contain | Error Message | 
| | Run Keyword Unless | '${BROWSER}' == 'Ie' | Page Should Not Contain | 404 Error | 
| | Run Keyword Unless | '${BROWSER}' == 'Ie' | Page Should Not Contain | Page not found | 

| Switch Window, Verify Correct Link Title and URL | [Arguments] | ${Expected page title} | ${Expected page url} | 
| | sleep | 5 | 
| | Select Window | title=${Expected page title} | 
| | Verify Correct Link Title | ${Expected page title} | 
| | Verify Correct Link URL | ${Expected page url} | 
| | Close Second Window, Switch Back to Main Window | 


| Switch Window, Verify Correct Link URL | [Arguments] | ${Expected page url} | 
| | sleep | 5 | 
| | Select Window | url=${Expected page url} | 
| | Verify Correct Link URL | ${Expected page url} | 
| | Close Second Window, Switch Back to Main Window | 


| Find and Click Element | [Arguments]    | ${Page element} | 
| |	Wait Until Element Is Visible         | ${Page element} | ${WAIT TIME} | 
| | Click Element | ${Page element} | 


| Verify Image On Page | [Arguments] | ${IMAGE ELEMENT} | 
| | Wait Until Element Is Visible    | ${IMAGE ELEMENT} | 
| | Element Should Be Visible        | ${IMAGE ELEMENT} | 


| Verify Text Element On Page | [Arguments] | ${TEXT ELEMENT} | 
| | Wait Until Element Is Visible    | ${TEXT ELEMENT} | 
| | Element Should Be Visible        | ${TEXT ELEMENT} | 

| Verify Element On Page | [Arguments] | ${ELEMENT} | 
| | Wait Until Element Is Visible    | ${ELEMENT} | 
| | Element Should Be Visible        | ${ELEMENT} | 

| Clear and Type into element | [Arguments] | ${field location} | ${text entry} | 
| | Wait Until Element Is Visible | ${field location} | 
| | Clear Element Text | ${field location} | 
| | Input Text | ${field location} | ${text entry} | 

| Select Dropdown Option | [Arguments] | ${main element} | ${sub element} | 
| | Find and Click Element | ${main element} | 
| | Find and Click Element | ${sub element} | 

| Hover Mouse | [Arguments] | ${element} | 
| | Mouse Over | ${ELEMENT} | 

| Switch Window | [Arguments] | ${title of new page} | 
| | Sleep | 5 | 
| | Select Window | title=${title of new page} | 

| Switch Window by url | [Arguments] | ${url of new page} | 
| | Sleep | 5 | 
| | Select Window | url=${url of new page} | 

| Close Second Window, Switch Back to Main Window | 
| | Run Keyword If | '${BROWSER}' == 'Firefox' | Close Window | 
| | Run Keyword If | '${BROWSER}' == 'Firefox' | Select Window | 
| | Run Keyword Unless | '${BROWSER}' == 'Firefox' | Close Browser | 
| | Run Keyword Unless | '${BROWSER}' == 'Firefox' | Setup Commands | 


# Copy review
| Actual vs Expected Copy | [Arguments] | ${Actual copy location} | ${Expected copy} | 
| |  ${Actual copy} | Get Text | ${Actual copy location} | 
| | Should Contain | ${Actual copy} | ${Expected copy} | 


# This function was written because Chrome was having difficulties finding elements on the page,
# where the element would be just out of the visible browser window.  This scrolls down a little on 
# the page after inputting the base element that you want to scroll down from.
| Javascript Scroll Down On Page | [Arguments] | ${base element} | 
| | Wait Until Element Is Visible | ${base element} | 
| | ${base element location} | Get Vertical Position | ${base element} | 
#| | Log | ${base element location} | 
| | ${converted number} | Convert To Integer | ${base element location} | 
#| | Log | ${converted number} | 
| | ${add} | Evaluate | ${converted number} + 5 | 
#| | Log | ${add} | 
| | Execute Javascript | return window.scrollTo(0,${add}) | 

| Javascript Scroll Up On Page | [Arguments] | ${base element} | 
| | Wait Until Element Is Visible | ${base element} | 
| | ${base element location} | Get Vertical Position | ${base element} | 
| | Log | ${base element location} | 
| | ${converted number} | Convert To Integer | ${base element location} | 
| | Log | ${converted number} | 
| | ${sub} | Evaluate | ${converted number} - 60 | 
| | Log | ${sub} | 
| | Execute Javascript | return window.scrollTo(0,${sub}) | 


# RESOLUTION SETTINGS
# ***************************************************************
# ***************************************************************
| user loads desktop resolution | 
| | Maximize Browser Window | 

| user loads mobile portrait resolution | 
| | Run Keyword Unless | '${BROWSER}'=='Ie' | Set Window Size | 320 | 568 | 
| | Run Keyword If | '${BROWSER}'=='Ie' | Set Window Size | 400 | 600 | 
| | Sleep | 2 | 

| user loads mobile landscape resolution | 
| | Run Keyword Unless | '${BROWSER}'=='Ie' | Set Window Size | 568 | 320 | 
| | Run Keyword If | '${BROWSER}'=='Ie' | Set Window Size | 600 | 450 | 
| | Sleep | 2 | 

| user loads tablet portrait resolution | 
| | Set Window Size | 768 | 1024 | 
| | Sleep | 2 | 

| user loads tablet landscape resolution | 
| | Set Window Size | 1024 | 768 | 
| | Sleep | 2 | 

# ***************************************************************
# ***************************************************************
# ***************************************************************

# Global Team One Methods

| user is taken to About page | 
| | Wait Until Element Is Visible | ${AboutElementPageLoadXpath} | 
| | Verify Correct Link URL | ${T1 ABOUT PAGE URL} | 
| user is taken to Careers page | 
| | Wait Until Element Is Visible | ${CareersElementPageLoadXpath} | 
| | Verify Correct Link URL | ${T1 CAREERS PAGE URL} | 
| user is taken to Lexus Facebook 1000 client page | 
#| | Wait Until Element Is Visible | ${CareersElementPageLoadXpath} | 
| | Verify Correct Link URL | ${LexusFacebookThousandToOneLinkURL} | 
| user is taken to Haagen Daaz Name of Real client page | 
#| | Wait Until Element Is Visible | ${CareersElementPageLoadXpath} | 
| | Verify Correct Link URL | ${HaagenDaazLinkURL} | 
| user is taken to 2k Evolve client page | 
#| | Wait Until Element Is Visible | ${CareersElementPageLoadXpath} | 
| | Verify Correct Link URL | ${TwoKEvolveLinkURL} | 

| user is taken to Automotive work page | 
| | Wait Until Element Is Visible | ${AutomotiveWorkPageLoadCSS} | 
| | Verify Correct Link URL | ${AutomotiveWorkLinkURL} | 


