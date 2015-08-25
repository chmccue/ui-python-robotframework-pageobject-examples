*** Settings ***
| Documentation | Team One Home Page. | 
| Library       | Selenium2Library | 
| Library       | BuiltIn | 
| Resource      | ../globals/constants.robot | 
| Resource      | ${GLOBALS PATH}/global_keywords.robot | 
| Resource      | ${GLOBALS PATH}/global_variables.robot | 

*** Variables ***

# HomePageMap
| ${LaunchingTheRemarkableTextXpath} | xpath=.//div[@id='heading']/h1[@class='fade heading-top'][contains(text(), 'LAUNCHING the')] | 

| ${ReadMoreAboutTeamOneButtonXpath} | xpath=(.//div[@class='home-quote-button cta']/a[@href='http://teamone-usa.com/about']/p[contains(text(), 'Read More About Team One')])[1] | 

| ${LexusFacebookThousandToOneSeeMoreButtonXpath} | xpath=(.//button[@class='cta'][contains(text(), 'See more')])[1] | 
| ${LexusFacebookThousandToOneTitleTextXpath} | xpath=.//div[@class='work-text']/h3[contains(text(), 'Facebook 1000 to 1')] | 

| ${HaagenDaazSeeMoreButtonXpath} | xpath=(.//button[@class='cta'][contains(text(), 'See more')])[2] | 
| ${HaagenDaazTitleTextXpath} | xpath=.//div[@class='work-text']/h3[contains(text(), 'IN THE NAME OF REAL')] | 

| ${TwoKEvolveSeeMoreButtonXpath} | xpath=(.//button[@class='cta'][contains(text(), 'See more')])[3] | 
| ${TwoKEvolveTitleTextXpath} | xpath=.//div[@class='work-text']/h3[contains(text(), 'Evolve')] | 

| ${NewBusinessTextElementsCSS} | css=div.contacts:nth-child(1)>div.home-contact-profile | 
| ${NewBusinessMainTitleText} | NEW BUSINESS INQUIRIES | 
| ${NewBusinessDirectorTitleText} | DIRECTOR OF NEW BUSINESS | 
| ${NewBusinessDirectorNameText} | HOWARD MOGGS | 
| ${HowardMoggsEmailButtonCSS} | css=a[href='mailto:howard.moggs@teamone-usa.com'] | 

| ${PressInquiriesTextElementsCSS} | css=div.contacts:nth-child(5)>div.home-contact-profile | 
| ${PressInquiriesMainTitleText} | PRESS INQUIRIES | 
| ${PressInquiriesDirectorTitleText} | DIRECTOR OF COMMUNICATIONS | 
| ${PressInquiriesDirectorNameText} | ALLISON CITINO | 
| ${AllisonCitinoEmailButtonCSS} | css=a[href='mailto:allison.citino@teamone-usa.com'] | 

| ${EmploymentOpportunitiesTextElementsCSS} | css=div.contacts:nth-child(3)>div.home-contact-profile | 
| ${SeeOurOpenPositionsButtonXpath} | xpath=//a[@href='http://teamone-usa.com/careers/']/p[contains(text(), 'See our Open Positions')][1] | 

#HomePageIndustryTilesMap
| ${ExpertsInTheIndustryTitleTextCSS} | css=div.expert-headline>h1 | 
| ${AutomotiveTabXpath} | xpath=.//div[@class='industry-title-wrapper']/div/h1[contains(text(), 'Automotive')] | 
| ${ConsumerElectronicsTabXpath} | xpath=(.//div[@class='industry-title-wrapper']/div/h1[contains(text(), 'Consumer Electronics')]) | 
| ${ConsumerPackagedGoodsTabXpath} | xpath=(.//div[@class='industry-title-wrapper']/div/h1[contains(text(), 'Consumer Packaged Goods')]) | 
| ${EntertainmentTabXpath} | xpath=(.//div[@class='industry-title-wrapper']/div/h1[contains(text(), 'Entertainment')]) | 
| ${FinancialServicesTabXpath} | xpath=(.//div[@class='industry-title-wrapper']/div/h1[contains(text(), 'Financial Services')]) | 
| ${GamingTabXpath} | xpath=(.//div[@class='industry-title-wrapper']/div/h1[contains(text(), 'Gaming')]) | 
| ${SportsTabXpath} | xpath=(.//div[@class='industry-title-wrapper']/div/h1[contains(text(), 'Sports')]) |  
| ${TravelAndHospitalityTabXpath} | xpath=(.//div[@class='industry-title-wrapper']/div/h1[contains(text(), 'Travel and Hospitality')]) | 

| @{HomePageIndustryTiles_List} | ${AutomotiveTabXpath} | ${ConsumerElectronicsTabXpath} | ${ConsumerPackagedGoodsTabXpath} | ${EntertainmentTabXpath} | ${FinancialServicesTabXpath} | ${GamingTabXpath} | ${SportsTabXpath} | ${TravelAndHospitalityTabXpath} | 
    


*** Keywords ***


# Setup keyword
| Setup Commands, Team One Home Page | 
| | Setup Commands | 
| | Go To | ${BASE URL} | 

# **********************************************

| user loads homepage | 
| | Verify Image On Page | ${LaunchingTheRemarkableTextXpath} | 

| Launching the Remarkable graphic is present and visible on page | 
| | Verify Image On Page | ${LaunchingTheRemarkableTextXpath} | 

| user clicks Read More About Team One button | 
| | Find and Click Element | ${ReadMoreAboutTeamOneButtonXpath} | 

| scrolls to Experts in the Industry section | 
| | Javascript Scroll Up On Page | ${ExpertsInTheIndustryTitleTextCSS} | 

| Click Tile. | [Arguments] | ${tile button} | ${tile link} | 
| | scrolls to Experts in the Industry section | 
| | Find and Click Element | ${tile button} | 
| | Verify Correct Link URL | ${tile link} | 

| Verify Tile click and link is correct - Automotive Tile | 
| | Click Tile. | ${AutomotiveTabXpath}            | ${AutomotiveWorkLinkURL} | 
#| | user is taken to Automotive work page | 
| Verify Tile click and link is correct - Consumer Electronics Tile | 
| | Click Tile. | ${ConsumerElectronicsTabXpath}   | ${ConsumerElectronicsWorkLinkURL} | 
| Verify Tile click and link is correct - Consumer Packaged Goods Tile | 
| | Click Tile. | ${ConsumerPackagedGoodsTabXpath} | ${ConsumerPackagedGoodsWorkLinkURL} | 
| Verify Tile click and link is correct - Entertainment Tile | 
| | Click Tile. | ${EntertainmentTabXpath}         | ${EntertainmentWorkLinkURL} | 
| Verify Tile click and link is correct - Financial Services Tile | 
| | Click Tile. | ${FinancialServicesTabXpath}     | ${FinancialServicesWorkLinkURL} | 
| Verify Tile click and link is correct - Gaming Tile | 
| | Click Tile. | ${GamingTabXpath}                | ${GamingWorkLinkURL} | 
| Verify Tile click and link is correct - Sports Tile | 
| | Click Tile. | ${SportsTabXpath}                | ${SportsWorkLinkURL} | 
| Verify Tile click and link is correct - Travel and Hospitality Tile | 
| | Click Tile. | ${TravelAndHospitalityTabXpath}  | ${TravelAndHospitalityWorkLinkURL} | 



#| *Test Case* | *Experts In The Industry* | *tile button*            | *expected tile link* | 
#| Scenario: Tile 1 | Click Tile. | ${AutomotiveTabXpath}            | ${AutomotiveWorkLinkURL} | 
#| Scenario: Tile 2 | Click Tile. | ${ConsumerElectronicsTabXpath}   | ${ConsumerElectronicsWorkLinkURL} | 
#| Scenario: Tile 3 | Click Tile. | ${ConsumerPackagedGoodsTabXpath} | ${ConsumerPackagedGoodsWorkLinkURL} | 
#| Scenario: Tile 4 | Click Tile. | ${EntertainmentTabXpath}         | ${EntertainmentWorkLinkURL} | 
#| Scenario: Tile 5 | Click Tile. | ${FinancialServicesTabXpath}     | ${FinancialServicesWorkLinkURL} | 
#| Scenario: Tile 6 | Click Tile. | ${GamingTabXpath}                | ${GamingWorkLinkURL} | 
#| Scenario: Tile 7 | Click Tile. | ${SportsTabXpath}                | ${SportsWorkLinkURL} | 
#| Scenario: Tile 8 | Click Tile. | ${TravelAndHospitalityTabXpath}  | ${TravelAndHospitalityWorkLinkURL} | 



| scrolls to Lexus Facebook 1000 image | 
| | Javascript Scroll Up On Page | ${LexusFacebookThousandToOneTitleTextXpath} | 
| | Hover Mouse | ${LexusFacebookThousandToOneTitleTextXpath} | 
| user clicks Lexus Facebook 1000 See More button | 
| | Find and Click Element | ${LexusFacebookThousandToOneSeeMoreButtonXpath} | 

| scrolls to Haagen Daaz Name of Real image | 
| | Javascript Scroll Up On Page | ${HaagenDaazTitleTextXpath} | 
| | Hover Mouse | ${HaagenDaazTitleTextXpath} | 
| user clicks Haagen Daaz Name of Real See More button | 
| | Find and Click Element | ${HaagenDaazSeeMoreButtonXpath} | 

| scrolls to 2k Evolve image | 
| | Javascript Scroll Up On Page | ${TwoKEvolveTitleTextXpath} | 
| | Hover Mouse | ${TwoKEvolveTitleTextXpath} | 
| user clicks 2k Evolve See More button | 
| | Find and Click Element | ${TwoKEvolveSeeMoreButtonXpath} | 

| scrolls to New Business Inquiries text | 
| | Javascript Scroll Up On Page | ${NewBusinessTextElementsCSS} | 
| user confirms that New Business title text is present | 
| | Verify Text Element On Page | ${NewBusinessTextElementsCSS} | 
| New Business Director name and email button are present | 
| | Run Keyword And Continue On Failure | Actual vs Expected Copy | ${NewBusinessTextElementsCSS} | ${NewBusinessMainTitleText} | 
| | Run Keyword And Continue On Failure | Actual vs Expected Copy | ${NewBusinessTextElementsCSS} | ${NewBusinessDirectorTitleText} | 
| | Run Keyword And Continue On Failure | Actual vs Expected Copy | ${NewBusinessTextElementsCSS} | ${NewBusinessDirectorNameText} | 
| | Verify Element On Page | ${HowardMoggsEmailButtonCSS} | 

| scrolls to Press Inquiries text | 
| | Javascript Scroll Up On Page | ${PressInquiriesTextElementsCSS} | 
| user confirms that Press Inquiries title text is present | 
| | Verify Text Element On Page | ${PressInquiriesTextElementsCSS} | 
| Press Inquiries Director name and email button are present | 
| | Run Keyword And Continue On Failure | Actual vs Expected Copy | ${PressInquiriesTextElementsCSS} | ${PressInquiriesMainTitleText} | 
| | Run Keyword And Continue On Failure | Actual vs Expected Copy | ${PressInquiriesTextElementsCSS} | ${PressInquiriesDirectorTitleText} | 
| | Run Keyword And Continue On Failure | Actual vs Expected Copy | ${PressInquiriesTextElementsCSS} | ${PressInquiriesDirectorNameText} | 
| | Verify Element On Page | ${AllisonCitinoEmailButtonCSS} | 

| scrolls to Employment Opportunities text | 
| | Javascript Scroll Up On Page | ${EmploymentOpportunitiesTextElementsCSS} | 
| user confirms that Employment Opportunities title text is present | 
| | Verify Text Element On Page | ${EmploymentOpportunitiesTextElementsCSS} | 
| user clicks See Our Open Positions button | 
| | Find and Click Element | ${SeeOurOpenPositionsButtonXpath} | 
