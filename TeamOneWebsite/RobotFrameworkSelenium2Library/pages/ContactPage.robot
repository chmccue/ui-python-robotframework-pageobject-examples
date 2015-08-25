*** Settings ***
| Documentation | Team One Home Page. | 
| Library       | Selenium2Library | 
| Library       | BuiltIn | 
| Resource      | ../globals/constants.robot | 
| Resource      | ${GLOBALS PATH}/global_keywords.robot | 
| Resource      | ${GLOBALS PATH}/global_variables.robot | 

*** Variables ***

# ContactPageMap
| ${TeamOneGraphicCSS} | css=.intrologo>img[src='../wp-content/uploads/2013/07/contact_header_to.jpg'] | 
| ${TeamOneAddressTextXpath} | xpath=.//div[@class='address']/h5[contains(text(), '13031 W. Jefferson Boulevard')] | 
| ${TeamOneOfficeHoursTextXpath} | xpath=.//div[@class='address']/h5[contains(text(), 'Office Hours')] | 
| ${TeamOnePhoneNumberCSS} | css=div.address>p>a[href='tel:(310) 437-2500'] | 
| ${TeamOneGetDirectionsLinkCSS} | css=div.address>p>a[href='https://maps.google.com/maps?q=13031+W.+Jefferson+Blvd.+Los+Angeles,+CA+90094'] | 
| ${TeamOneGetDirectionsPageTitle} | Google Maps | 
| ${TeamOneGetDirectionsURL} | https://www.google.com/maps/place/13031+W+Jefferson+Blvd,+Los+Angeles,+CA+90094 | 

| ${TeamOneEmailLinkCSS} | css=div.address>p>a[href='mailto:info@teamone-usa.com'] | 

| ${TwitterGrayButtonCSS} | css=div.social>a>img[alt='twitter-bird-grey'] | 
| ${FacebookGrayButtonCSS} | css=div.social>a>img[alt='facebook-grey'] | 
| ${GooglePlusGrayButtonCSS} | css=div.social>a>img[alt='googleplus-grey'] | 
| ${LinkedInGrayButtonCSS} | css=div.social>a>img[alt='linkedin-grey'] | 
| ${InstagramGrayButtonCSS} | css=div.social>a>img[src='../wp-content/themes/img/icons/contact_social_ins.jpg'] | 

| ${TeamOneGoogleMapGraphicCSS} | css=div#map>div.gm-style | 

| ${TeamOneInquiriesTitleXpath} | xpath=.//div/h1[contains(text(), 'Inquiries')] | 

| ${T1InquiriesNewBusinessPhotoCSS} | css=img.photo[src='../wp-content/themes/Foundation/img/howard_moggs_b&w.jpg'] | 
| ${T1InquiriesNewBusinessTextDetailsCSS} | css=ul.col4>li:nth-child(1)>div.user_module | 
| ${T1InquiriesNewBusinessNameText} | HOWARD MOGGS | 
| ${T1InquiriesNewBusinessJobTitleText} | Director of New Business | 
| ${T1InquiriesNewBusinessPhoneCSS} | css=ul.col4>li:nth-child(1)>div.user_module>p>a[href='tel:(310) 437 2438'] | 
| ${T1InquiriesNewBusinessPhoneText} | 310 437 2438 | 

| ${T1InquiriesNewBusinessEmailCSS} | css=ul.col4>li>div.user_module>p>a[href='mailto:howard.moggs@teamone-usa.com'] | 
| ${T1InquiriesNewBusinessEmailText} | howard.moggs | 

| ${T1InquiriesPressPhotoCSS} | css=img.photo[src='../wp-content/themes/Foundation/img/alison_citino_B&W.jpg'] | 
| ${T1InquiriesPressTextDetailsCSS} | css=ul.col4>li:nth-child(2)>div.user_module | 
| ${T1InquiriesPressNameText} | ALLISON CITINO | 
| ${T1InquiriesPressJobTitleText} | Director of Communications | 
| ${T1InquiriesPressPhoneCSS} | css=ul.col4>li:nth-child(2)>div.user_module>p>a[href='tel:(310) 437 2061']
| ${T1InquiriesPressPhoneText} | 310 437 2061 | 

| ${T1InquiriesPressEmailCSS} | css=ul.col4>li>div.user_module>p>a[href='mailto:allison.citino@teamone-usa.com'] | 
| ${T1InquiriesPressEmailText} | allison.citino | 

| ${T1OtherOfficesTitleXpath} | xpath=.//div[@class='copy span contact']/h1[.='Other Offices'] | 

| ${T1NewYorkOfficeTextCSS} | css=ul>li:nth-child(1).building_module | 
| ${T1WashingtonDCOfficeTextCSS} | css=ul>li:nth-child(2).building_module | 
| ${T1AtlantaOfficeTextCSS} | css=ul>li:nth-child(3).building_module | 
| ${T1ChicagoOfficeTextCSS} | css=ul>li:nth-child(4).building_module | 

| ${T1NewYorkOfficeImageCSS} | css=img.overlay[src='http://teamone-usa.com/wp-content/uploads/2013/06/office_ny1.jpg'] | 
| ${T1WashingtonDCOfficeImageCSS} | css=img.overlay[src='http://teamone-usa.com/wp-content/uploads/2013/06/office_dc1.jpg'] | 
| ${T1AtlantaOfficeImageCSS} | css=img.overlay[src='http://teamone-usa.com/wp-content/uploads/2013/06/office_ga1.jpg'] | 
| ${T1ChicagoOfficeImageCSS} | css=img.overlay[src='http://teamone-usa.com/wp-content/uploads/2013/06/office_il1.jpg'] | 

| ${T1NewYorkOfficeCityText} | NEW YORK | 
| ${T1WashingtonDCOfficeCityText} | WASHINGTON D.C. AREA | 
| ${T1AtlantaOfficeCityText} | ATLANTA | 
| ${T1ChicagoOfficeCityText} | CHICAGO | 

| ${T1NewYorkOfficeAddressText} | 299 W. HOUSTON STREET, 9TH FLOOR | 
| ${T1WashingtonDCOfficeAddressText} | 2300 CLARENDON BLVD, SUITE 255 | 
| ${T1AtlantaOfficeAddressText} | 1170 PEACHTREE ST NE | 
| ${T1ChicagoOfficeAddressText} | ONE TOWER LANE SUITE 3120 | 

| ${T1NewYorkOfficePhoneCSS} | css=li.building_module>p>a[href='tel:(212) 463-3201'] | 
| ${T1WashingtonDCOfficePhoneCSS} | css=li.building_module>p>a[href='tel:(703) 294-6470'] | 
| ${T1AtlantaOfficePhoneCSS} | css=li.building_module>p>a[href='tel:(404) 870-6805'] | 
| ${T1ChicagoOfficePhoneCSS} | css=li.building_module>p>a[href='tel:(630) 684-0317'] | 

| ${T1NewYorkOfficePhoneText} | (212) 463-3201 | 
| ${T1WashingtonDCOfficePhoneText} | (703) 294-6470 | 
| ${T1AtlantaOfficePhoneText} | (404) 870-6805 | 
| ${T1ChicagoOfficePhoneText} | (630) 684-0317 | 

| ${T1NewYorkDirectionsButtonCSS} | css=li:nth-child(1).building_module>p:nth-child(5)>a | 
| ${T1WashingtonDCDirectionsButtonCSS} | css=li:nth-child(2).building_module>p:nth-child(5)>a | 
| ${T1AtlantaDirectionsButtonCSS} | css=li:nth-child(3).building_module>p:nth-child(5)>a | 
| ${T1ChicagoDirectionsButtonCSS} | css=li:nth-child(4).building_module>p:nth-child(5)>a | 

| ${T1NewYorkAddressPageTitle} | 299 W Houston Street - Google Maps | 
| ${T1WashingtonDCAddressPageTitle} | 2300 Clarendon Blvd - Google Maps | 
| ${T1AtlantaAddressPageTitle} | 1170 Peachtree Street - Google Maps | 
| ${T1ChicagoAddressPageTitle} | One Tower Lane - Google Maps | 

| ${T1NewYorkAddressPageURL} | https://www.google.com/maps?q=299+W.+HOUSTON+STREET,+9TH+FLOOR+NEW+YORK,+NY+10014 | 
| ${T1WashingtonDCAddressPageURL} | https://www.google.com/maps?q=2300+CLARENDON+BLVD,+SUITE+255+ARLINGTON,+VA+22201 | 
| ${T1AtlantaAddressPageURL} | https://www.google.com/maps?q=1170+PEACHTREE+ST+NE+ATLANTA,+GA+30309 | 
| ${T1ChicagoAddressPageURL} | https://www.google.com/maps?q=ONE+TOWER+LANE+SUITE+3120+OAKBROOK+TERRACE,+IL+60181 | 

| ${T1MainAddressMapPageElementXpath} | xpath=.//div[@class='cards-alias-entity-location']/h1/span[contains(text(), '13031 W Jefferson Blvd')] | 

| ${T1NewYorkMapPageElementXpath} | xpath=.//div[@class='cards-alias-entity-location']/h1/span[contains(text(), '299 W Houston St')] | 
| ${T1WashingtonDCMapPageElementXpath} | xpath=.//div[@class='cards-alias-entity-location']/h1/span[contains(text(), '299 W Houston St')] | 
| ${T1AtlantaMapPageElementXpath} | xpath=.//div[@class='cards-alias-entity-location']/h1/span[contains(text(), '299 W Houston St')] | 
| ${T1ChicagoMapPageElementXpath} | xpath=.//div[@class='cards-alias-entity-location']/h1/span[contains(text(), '299 W Houston St')] | 


*** Keywords ***

# Setup keyword
| Setup Commands, Team One Contact Page | 
| | Setup Commands | 
| | Go To | ${BASE URL}${T1 CONTACT PAGE URL} | 

| user is on contact page | 
| | Verify Image On Page | ${TeamOneGraphicCSS} | 

| Team One logo, Address and office hours are present on page | 
| | Javascript Scroll Up On Page | ${TeamOneGraphicCSS} | 
| | Verify Element On Page | ${TeamOneAddressTextXpath} | 
| | Verify Element On Page | ${TeamOneOfficeHoursTextXpath} | 

| Team One phone number is present and is a hyperlink on the page | 
| | Javascript Scroll Up On Page | ${TeamOnePhoneNumberCSS} | 
| | Verify Element On Page | ${TeamOnePhoneNumberCSS} | 

| user clicks Get Directions link | 
| | Find and Click Element | ${TeamOneGetDirectionsLinkCSS} | 

| user is taken to Google Map page of Team One Address | 
#| | Switch Window, Verify Correct Link URL | ${TeamOneGetDirectionsURL} | 
| | Switch Window by url | ${TeamOneGetDirectionsURL}  | 
| | Verify Element On Page | ${T1MainAddressMapPageElementXpath} | 
| | Close Second Window, Switch Back to Main Window | 

| Team One info email is present and is a hyperlink on the page | 
| | Javascript Scroll Up On Page | ${TeamOneEmailLinkCSS} | 
| | Verify Element On Page | ${TeamOneEmailLinkCSS} | 

| grey share icon | [Arguments] | ${grey share icon} | ${grey share page title} | ${grey share url} | 
| | Find and Click Element | ${grey share icon} | 
| | Sleep | 2 | 
| | Switch Window, Verify Correct Link URL | ${grey share url} | 
#| | Run Keyword Unless | '${grey share url}'=='${T1GooglePlusURL}' | Switch Window, Verify Correct Link URL | ${grey share url} | 
#| | Run Keyword If | '${grey share url}'=='${T1GooglePlusURL}' | Verify Correct Link URL | ${grey share url} | 

|  Verify grey share button click and link is correct - Twitter | 
| | grey share icon | ${TwitterGrayButtonCSS} | ${T1TwitterPageTitle} | ${T1TwitterURL} | 

|  Verify grey share button click and link is correct - Facebook | 
| | grey share icon | ${FacebookGrayButtonCSS} | ${T1FacebookPageTitle} | ${T1FacebookURL} | 

|  Verify grey share button click and link is correct - Google Plus | 
| | grey share icon | ${GooglePlusGrayButtonCSS} | ${T1GooglePlusPageTitle} | ${T1GooglePlusURL} | 

|  Verify grey share button click and link is correct - Linked In | 
| | grey share icon | ${LinkedInGrayButtonCSS} | ${T1LinkedInPageTitle} | ${T1LinkedInURL} | 

|  Verify grey share button click and link is correct - Instagram | 
| | grey share icon | ${InstagramGrayButtonCSS} | ${T1InstagramPageTitle} | ${T1InstagramURL} | 


#| *Test Case* | *Grey Share section* | *grey share button* | *expected page title* | *expected page url* |  
#| Scenario: Grey Share 1 | grey share icon | ${TwitterGrayButtonCSS} | ${T1TwitterPageTitle} | ${T1TwitterURL} | 
#| Scenario: Grey Share 2 | grey share icon | ${FacebookGrayButtonCSS} | ${T1FacebookPageTitle} | ${T1FacebookURL} | 
#| Scenario: Grey Share 3 | grey share icon | ${GooglePlusGrayButtonCSS} | ${T1GooglePlusPageTitle} | ${T1GooglePlusURL} | 
#| Scenario: Grey Share 4 | grey share icon | ${LinkedInGrayButtonCSS} | ${T1LinkedInPageTitle} | ${T1LinkedInURL} |  
#| Scenario: Grey Share 5 | grey share icon | ${InstagramGrayButtonCSS} | ${T1InstagramPageTitle} | ${T1InstagramURL} | 




| user scrolls page to Google Map graphic | 
| | Javascript Scroll Up On Page | ${TeamOneGoogleMapGraphicCSS} | 

| Google Map is present and shows Team One Address | 
| | Verify Element On Page | ${TeamOneGoogleMapGraphicCSS} | 


| user scrolls to Inquiries section | 
| | Javascript Scroll Up On Page | ${TeamOneInquiriesTitleXpath} | 

| New Business image and director details are present | 
| | Verify Image On Page | ${T1InquiriesNewBusinessPhotoCSS} | 
| | Actual vs Expected Copy | ${T1InquiriesNewBusinessTextDetailsCSS} | ${T1InquiriesNewBusinessNameText} | 
| | Actual vs Expected Copy | ${T1InquiriesNewBusinessTextDetailsCSS} | ${T1InquiriesNewBusinessJobTitleText} | 

| New Business director's phone number and email are hyperlinks | 
| | Actual vs Expected Copy | ${T1InquiriesNewBusinessPhoneCSS} | ${T1InquiriesNewBusinessPhoneText} | 
| | Actual vs Expected Copy | ${T1InquiriesNewBusinessEmailCSS} | ${T1InquiriesNewBusinessEmailText} | 

| Press & PR image and director details are present | 
| | Verify Image On Page | ${T1InquiriesPressPhotoCSS} | 
| | Actual vs Expected Copy | ${T1InquiriesPressTextDetailsCSS} | ${T1InquiriesPressNameText} | 
| | Actual vs Expected Copy | ${T1InquiriesPressTextDetailsCSS} | ${T1InquiriesPressJobTitleText} | 
| Press & PR director's phone number and email are hyperlinks | 
| | Actual vs Expected Copy | ${T1InquiriesPressPhoneCSS} | ${T1InquiriesPressPhoneText} | 
| | Actual vs Expected Copy | ${T1InquiriesPressEmailCSS} | ${T1InquiriesPressEmailText} | 


| user scrolls to Other Offices section | 
| | Javascript Scroll Up On Page | ${T1OtherOfficesTitleXpath} | 


| other office info | [Arguments] | ${office image element} | ${office text element} | ${office city text} | ${office address text} | ${office phone location} | ${office phone text} | ${office directions button} | ${office address page title} | ${office address url} | ${map page element} | 
| | user scrolls to Other Offices section | 
| | Javascript Scroll Up On Page | ${office text element} | 
| | Verify Element On Page | ${office image element} | 
| | Actual vs Expected Copy | ${office text element} | ${office city text} | 
| | Actual vs Expected Copy | ${office text element} | ${office address text} | 
| | Actual vs Expected Copy | ${office phone location} | ${office phone text} | 
| | Find and Click Element | ${office directions button} | 
#| | Switch Window, Verify Correct Link URL | ${office address url} | 
| | Switch Window by url | ${office address url} | 
| | Verify Element On Page | ${map page element} | 
| | Close Second Window, Switch Back to Main Window | 


| Verify office info is correct and directions button link is correct - New York | 
| | other office info | ${T1NewYorkOfficeImageCSS} | ${T1NewYorkOfficeTextCSS} | ${T1NewYorkOfficeCityText} | ${T1NewYorkOfficeAddressText} | ${T1NewYorkOfficePhoneCSS} | ${T1NewYorkOfficePhoneText} | ${T1NewYorkDirectionsButtonCSS} | ${T1NewYorkAddressPageTitle} | ${T1NewYorkAddressPageURL} | ${T1NewYorkMapPageElementXpath} | 

| Verify office info is correct and directions button link is correct - Washington DC | 
| | other office info | ${T1WashingtonDCOfficeImageCSS} | ${T1WashingtonDCOfficeTextCSS} | ${T1WashingtonDCOfficeCityText} | ${T1WashingtonDCOfficeAddressText} | ${T1WashingtonDCOfficePhoneCSS} | ${T1WashingtonDCOfficePhoneText} | ${T1WashingtonDCDirectionsButtonCSS} | ${T1WashingtonDCAddressPageTitle} | ${T1WashingtonDCAddressPageURL} | ${T1WashingtonDCMapPageElementXpath} | 

| Verify office info is correct and directions button link is correct - Atlanta | 
| | other office info | ${T1AtlantaOfficeImageCSS} | ${T1AtlantaOfficeTextCSS} | ${T1AtlantaOfficeCityText} | ${T1AtlantaOfficeAddressText} | ${T1AtlantaOfficePhoneCSS} | ${T1AtlantaOfficePhoneText} | ${T1AtlantaDirectionsButtonCSS} | ${T1AtlantaAddressPageTitle} | ${T1AtlantaAddressPageURL} | ${T1AtlantaMapPageElementXpath} | 

| Verify office info is correct and directions button link is correct - Chicago | 
| | other office info | ${T1ChicagoOfficeImageCSS} | ${T1ChicagoOfficeTextCSS} | ${T1ChicagoOfficeCityText} | ${T1ChicagoOfficeAddressText} | ${T1ChicagoOfficePhoneCSS} | ${T1ChicagoOfficePhoneText} | ${T1ChicagoDirectionsButtonCSS} | ${T1ChicagoAddressPageTitle} | ${T1ChicagoAddressPageURL} | ${T1ChicagoMapPageElementXpath} | 




#| *Test Case* | *office info* | *image* | *text loc* | *city* | *address* | *phone loc* | *phone* | *directions button* | *address page title* | *address url* | 
#| Scenario: New York Office | other office info | ${T1NewYorkOfficeImageCSS} | ${T1NewYorkOfficeTextCSS} | ${T1NewYorkOfficeCityText} | ${T1NewYorkOfficeAddressText} | ${T1NewYorkOfficePhoneCSS} | ${T1NewYorkOfficePhoneText} | ${T1NewYorkDirectionsButtonCSS} | ${T1NewYorkAddressPageTitle} | ${T1NewYorkAddressPageURL} | 
#| Scenario: Washington DC Office | other office info | ${T1WashingtonDCOfficeImageCSS} | ${T1WashingtonDCOfficeTextCSS} | ${T1WashingtonDCOfficeCityText} | ${T1WashingtonDCOfficeAddressText} | ${T1WashingtonDCOfficePhoneCSS} | ${T1WashingtonDCOfficePhoneText} | ${T1WashingtonDCDirectionsButtonCSS} | ${T1WashingtonDCAddressPageTitle} | ${T1WashingtonDCAddressPageURL} | 
#| Scenario: Atlanta Office | other office info | ${T1AtlantaOfficeImageCSS} | ${T1AtlantaOfficeTextCSS} | ${T1AtlantaOfficeCityText} | ${T1AtlantaOfficeAddressText} | ${T1AtlantaOfficePhoneCSS} | ${T1AtlantaOfficePhoneText} | ${T1AtlantaDirectionsButtonCSS} | ${T1AtlantaAddressPageTitle} | ${T1AtlantaAddressPageURL} | 
#| Scenario: Chicago Office | other office info | ${T1ChicagoOfficeImageCSS} | ${T1ChicagoOfficeTextCSS} | ${T1ChicagoOfficeCityText} | ${T1ChicagoOfficeAddressText} | ${T1ChicagoOfficePhoneCSS} | ${T1ChicagoOfficePhoneText} | ${T1ChicagoDirectionsButtonCSS} | ${T1ChicagoAddressPageTitle} | ${T1ChicagoAddressPageURL} | 

