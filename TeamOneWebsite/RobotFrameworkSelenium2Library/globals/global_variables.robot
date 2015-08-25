*** Variables ***

# ***************************************************************
# /\/\/\/\Page URLs and Titles/\/\/\/\
# ******************************************************
# ******************************************************
# MAIN TEAM ONE PAGE TITLES AND URLS
# ******************************************************

| ${T1 HOME PAGE TITLE} | Team One Advertising | 
| ${T1 WORK PAGE TITLE} | Client Work \| Team One | 
| ${T1 ABOUT PAGE TITLE} | About Us \| Team One | 
| ${T1 TEAM PAGE TITLE} | Team \| Team One | 
| ${T1 FEED PAGE TITLE} | The Feed \| Team One | 
| ${T1 CAREERS PAGE TITLE} | Careers \| Team One | 
| ${T1 CONTACT PAGE TITLE} | Contact \| Team One | 


| ${T1 HOME PAGE URL} | / | 
| ${T1 WORK PAGE URL} | /work/ | 
| ${T1 ABOUT PAGE URL} | /about/ | 
| ${T1 TEAM PAGE URL} | /team/ | 
| ${T1 FEED PAGE URL} | /the-feed/ | 
| ${T1 CAREERS PAGE URL} | /careers/ | 
| ${T1 CONTACT PAGE URL} | /contact/ | 

| @{T1 PAGE URLS LIST} | ${T1 HOME PAGE URL} | ${T1 WORK PAGE URL} | ${T1 TEAM PAGE URL} | ${T1 FEED PAGE URL} | ${T1 CAREERS PAGE URL} | ${T1 CONTACT PAGE URL} | ${LexusFacebookThousandToOneLinkURL} | ${TwoKEvolveLinkURL} | ${HaagenDaazLinkURL} | ${AutomotiveWorkLinkURL} | ${ConsumerElectronicsWorkLinkURL} | ${ConsumerPackagedGoodsWorkLinkURL} | ${EntertainmentWorkLinkURL} | ${FinancialServicesWorkLinkURL} | ${GamingWorkLinkURL} | ${SportsWorkLinkURL} | ${TravelAndHospitalityWorkLinkURL} | 



| ${LexusFacebookThousandToOneLinkURL} | work/#/work/lexus-facebook-1000-ads | 
| ${TwoKEvolveLinkURL} | work/#/work/evolve-website | 
| ${HaagenDaazLinkURL} | work/#/work/name-real | 


#HomePageIndustryTileLinksMap
| ${AutomotiveWorkLinkURL} | work/#/filter/industries/Automotive | 
| ${ConsumerElectronicsWorkLinkURL} | work/#/filter/industries/Consumer Electronics | 
| ${ConsumerPackagedGoodsWorkLinkURL} | work/#/filter/industries/Consumer Packaged Goods | 
| ${EntertainmentWorkLinkURL} | work/#/filter/industries/Entertainment | 
| ${FinancialServicesWorkLinkURL} | work/#/filter/industries/Financial Services | 
| ${GamingWorkLinkURL} | work/#/filter/industries/Gaming | 
| ${SportsWorkLinkURL} | work/#/filter/industries/Sports | 
| ${TravelAndHospitalityWorkLinkURL} | work/#/filter/industries/Travel and Hospitality | 

| @{HomePageIndustryTileLinks_List} | ${AutomotiveWorkLinkURL} | ${ConsumerElectronicsWorkLinkURL} | ${ConsumerPackagedGoodsWorkLinkURL} | ${EntertainmentWorkLinkURL} | ${FinancialServicesWorkLinkURL} | ${GamingWorkLinkURL} | ${SportsWorkLinkURL} | ${TravelAndHospitalityWorkLinkURL} | 


# ELEMENTS TO CHECK FOR LOADING ON PAGE BEFORE VERIFYING PAGE TITLE AND URL.

| ${CareersElementPageLoadXpath} | xpath=.//div[@class='copy span careers']/h1[contains(text(), 'Careers')] | 
| ${AboutElementPageLoadXpath} | xpath=(.//div[@class='copy span']/h1[contains(text(), 'We are Team One.')]) | 
| ${WorkElementPageLoadCSS} | css=img#taxonomy-image[src='http://teamone-usa.com/wp-content/uploads/2013/07/work-default.png'] | 
| ${HomeElementPageLoadXpath} | xpath=.//div[@id='heading']/h1[@class='fade heading-top'][contains(text(), 'LAUNCHING the')] | 
| ${AutomotiveWorkPageLoadCSS} | css=img#taxonomy-image[src='http://teamone-usa.com/wp-content/uploads/2015/07/automotive1.png'] |
# ******************************************************
# TOP NAV LINKS
# ******************************************************

| ${T1LogoButtonCSS}   | css=div.nav-logo>img[src='../wp-content/themes/img/t1_logo_white.png'] | 
| ${T1WorkTabCSS}      | css=li.link>a[href='http://teamone-usa.com/work'] | 
| ${T1AboutTabCSS}     | css=li.link>a[href='http://teamone-usa.com/about'] | 
| ${T1TeamTabCSS}      | css=li.link>a[href='http://teamone-usa.com/team'] | 
| ${T1FeedTabCSS}      | css=li.link>a[href='http://teamone-usa.com/the-feed'] | 
| ${T1CareersTabCSS}   | css=li.link>a[href='http://teamone-usa.com/careers'] | 
| ${T1ContactTabCSS}   | css=li.link>a[href='http://teamone-usa.com/contact'] | 
| ${T1SearchButtonCSS} | css=div.search-button.icon | 

# ******************************************************
# FOOTER NAV ELEMENTS
# ******************************************************

| ${T1FooterLegalTextCSS}        | css=div.section.legal>p | 
| ${T1FooterFacebookButtonCSS}   | css=div.shareBar>ul>li>a[href='https://www.facebook.com/TeamOneUSA'] | 
| ${T1FooterTwitterButtonCSS}    | css=div.shareBar>ul>li>a[href='https://twitter.com/TeamOneUSA'] | 
| ${T1FooterLinkedInButtonCSS}   | css=div.shareBar>ul>li>a[href='http://www.linkedin.com/company/166277'] | 
| ${T1FooterInstagramButtonCSS}  | css=div.shareBar>ul>li>a[href='http://instagram.com/TeamOneUSA'] | 
| ${T1FooterGooglePlusButtonCSS} | css=div.shareBar>ul>li>a[href='https://plus.google.com/+Teamone-usa'] | 

| @{T1 FOOTER NAV ELEMENTS LIST} | ${T1FooterLegalTextCSS} | ${T1FooterFacebookButtonCSS} | ${T1FooterTwitterButtonCSS} | ${T1FooterLinkedInButtonCSS} | ${T1FooterInstagramButtonCSS} | ${T1FooterGooglePlusButtonCSS} | 


| ${T1TwitterPageTitle} | Team One (@TeamOneUSA) \| Twitter | 
| ${T1FacebookPageTitle} | Team One USA - Los Angeles, California - Advertising Agency, Workplace & Office | 
| ${T1GooglePlusPageTitle} | Team One USA - Google+ | 
| ${T1LinkedInPageTitle} | Team One \| LinkedIn | 
| ${T1InstagramPageTitle} | Team One USA (@teamoneusa) • Instagram photos and videos | 


| ${T1TwitterURL} | https://twitter.com/TeamOneUSA | 
| ${T1FacebookURL} | https://www.facebook.com/TeamOneUSA | 
| ${T1GooglePlusURL} | https://plus.google.com/+Teamone-usa/posts | 
| ${T1LinkedInURL} | https://www.linkedin.com/company/team-one | 
| ${T1InstagramURL} | https://instagram.com/TeamOneUSA/ | 
