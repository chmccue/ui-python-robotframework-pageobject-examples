# coding: utf-8


PageTitlesAndURLsMap = dict(
    WorkPageTitle = "Client Work | Team One",
    WorkPageURL   = "work/",
    WorkElementPageLoadCSS = "img#taxonomy-image[src='http://teamone-usa.com/wp-content/uploads/2013/07/work-default.png']",
    AboutUsPageTitle = "About Us | Team One",
    AboutUsPageURL = "about/",
    AboutElementPageLoadXpath = "(.//div[@class='copy span']/h1[contains(text(), 'We are Team One.')])",
    CareersPageTitle = "Careers | Team One",
    CareersPageURL = "careers/",
    CareersElementPageLoadXpath = ".//div[@class='copy span careers']/h1[contains(text(), 'Careers')]",
    ContactPageTitle = "Contact | Team One",
    ContactPageURL = "contact/",
    LexusFacebookThousandToOneLinkURL = "work/#/work/lexus-facebook-1000-ads",
    LexusFacebookThousandToOnePageLoadXpath = "//div[@class='cols']/h2[contains(text(), 'Facebook 1000 to 1')]",
    HaagenDaazLinkURL = "work/#/work/name-real",
    HaagenDaazNameOfRealPageLoadXpath = "//div[@class='cols']/h2[contains(text(), 'IN THE NAME OF REAL')]",
    TwoKEvolveLinkURL = "work/#/work/evolve-website",
    TwoKEvolvePageLoadXpath = "//div[@class='cols']/h2[contains(text(), 'Evolve')]",
    AutomotiveWorkLinkURL = "work/#/filter/industries/Automotive",
    AutomotiveWorkPageLoadCSS = "img[src='http://teamone-usa.com/wp-content/uploads/2015/07/automotive1.png']",
    AutomotiveWorkPageLoadXpath = ".//*[@id='taxonomy-copy'][contains(text(), 'Automotive is our sweet spot')]",
    ConsumerElectronicsWorkLinkURL = "work/#/filter/industries/Consumer Electronics",
    ConsumerElectronicsWorkPageLoadCSS = "img#taxonomy-image[src='http://teamone-usa.com/wp-content/uploads/2015/07/consumer-electronics.png']",
    ConsumerElectronicsWorkPageLoadXpath = ".//*[@id='taxonomy-copy'][contains(text(), 'How do you stand out in a crowded marketplace where every new day brings thinner, better, faster?')]",
    ConsumerPackagedGoodsWorkLinkURL = "work/#/filter/industries/Consumer Packaged Goods",
    ConsumerPackagedGoodsWorkPageLoadCSS = "img#taxonomy-image[src='http://teamone-usa.com/wp-content/uploads/2015/07/consumer-pkg-goods.png']",
    ConsumerPackagedGoodsWorkPageLoadXpath = ".//*[@id='taxonomy-copy'][contains(text(), 'Team One takes everyday products like water and ice cream')]",
    EntertainmentWorkLinkURL = "work/#/filter/industries/Entertainment",
    EntertainmentWorkPageLoadCSS = "img#taxonomy-image[src='http://teamone-usa.com/wp-content/uploads/2015/07/entertainment.png']",
    EntertainmentWorkPageLoadXpath = ".//*[@id='taxonomy-copy'][contains(text(), 'Team One understands the ever-changing demands of the entertainment world.')]",
    FinancialServicesWorkLinkURL = "work/#/filter/industries/Financial Services",
    FinancialServicesWorkPageLoadCSS = "img#taxonomy-image[src='http://teamone-usa.com/wp-content/uploads/2015/07/financialServices.png']",
    FinancialServicesWorkPageLoadXpath = ".//*[@id='taxonomy-copy'][contains(text(), 'The financial sector is no place for novices.')]",
    GamingWorkLinkURL = "work/#/filter/industries/Gaming",
    GamingWorkPageLoadCSS = "img#taxonomy-image[src='http://teamone-usa.com/wp-content/uploads/2015/07/gaming.png']",
    GamingWorkPageLoadXpath = ".//*[@id='taxonomy-copy'][contains(text(), 'Live and breathe the gaming world?')]",
    SportsWorkLinkURL = "work/#/filter/industries/Sports",
    SportsWorkPageLoadCSS = "img#taxonomy-image[src='http://teamone-usa.com/wp-content/uploads/2015/07/sports.png']",
    SportsWorkPageLoadXpath = ".//*[@id='taxonomy-copy'][contains(text(), 'All brands want to turn consumers into fans.')]",
    TravelAndHospitalityWorkLinkURL = "work/#/filter/industries/Travel and Hospitality",
    TravelAndHospitalityWorkPageLoadCSS = "img#taxonomy-image[src='http://teamone-usa.com/wp-content/uploads/2015/07/travelHospitality.png']",
    TravelAndHospitalityWorkPageLoadXpath = ".//*[@id='taxonomy-copy'][contains(text(), 'Airbnb. Private islands. Concierge apps.')]"
    )

URLPageList = ["/", "work/", "work/#/filter/industries/Automotive", "work/#/filter/industries/Consumer Electronics", 
               "work/#/filter/industries/Consumer Packaged Goods", "work/#/filter/industries/Entertainment", 
               "work/#/filter/industries/Financial Services", "work/#/filter/industries/Gaming", 
               "work/#/filter/industries/Sports", "work/#/filter/industries/Travel and Hospitality", 
               "about/", "team/", "the-feed/", "careers/", "contact/"]


FooterNavMap = dict(
    legalTextCSS = "div.section.legal>p",
    facebookButtonCSS = "div.shareBar>ul>li>a[href='https://www.facebook.com/TeamOneUSA']",
    twitterButtonCSS = "div.shareBar>ul>li>a[href='https://twitter.com/TeamOneUSA']",
    linkedinButtonCSS = "div.shareBar>ul>li>a[href='http://www.linkedin.com/company/166277']",
    instagramButtonCSS = "div.shareBar>ul>li>a[href='http://instagram.com/TeamOneUSA']",
    googleplusButtonCSS = "div.shareBar>ul>li>a[href='https://plus.google.com/+Teamone-usa']"
    )

GlobalNavMap = dict(
    teamOneLogoButtonCSS = "div.nav-logo>img[src='../wp-content/themes/img/t1_logo_white.png']",
    workTabCSS =    "li.link>a[href='http://teamone-usa.com/work']",
    aboutUsTabCSS = "li.link>a[href='http://teamone-usa.com/about']",
    theTeamTabCSS = "li.link>a[href='http://teamone-usa.com/team']",
    theFeedTabCSS = "li.link>a[href='http://teamone-usa.com/the-feed']",
    careersTabCSS = "li.link>a[href='http://teamone-usa.com/careers']",
    contactTabCSS = "li.link>a[href='http://teamone-usa.com/contact']",
    searchButtonCSS = "div.search-button.icon"
    )

WorkPageMap = dict(
    WorkPageMainImageElementCSS = "img#taxonomy-image[src='http://teamone-usa.com/wp-content/uploads/2013/07/work-default.png']"
    )


AboutUsPageMap = dict(
    WeAreTeamOneTitleTextXpath = "(.//div[@class='copy span']/h1[contains(text(), 'We are Team One.')])",
    OurWorkButtonCSS = "a[href='http://teamone-usa.com/work/'][title='Work']",
    WhoWeAreButtonCSS = "li.subnav-item>a[href='#Who We Are']",
    WhatWeLaunchButtonCSS = "li.subnav-item>a[href='#What We Launch']",
    WorthItButtonCSS = "li.subnav-item>a[href='#Worth It']",
    RemarkableTogetherButtonCSS = "li.subnav-item>a[href='#Remarkable Together']",
    OurClientsButtonCSS = "li.subnav-item>a[href='#Our Clients']"
    )


HomePageMap = dict(
    LaunchingTheRemarkableTextXpath = ".//div[@id='heading']/h1[@class='fade heading-top'][contains(text(), 'LAUNCHING the')]",
    ReadMoreAboutTeamOneButtonXpath = "(.//div[@class='home-quote-button cta']/a[@href='http://teamone-usa.com/about']/p[contains(text(), 'Read More About Team One')])[1]",
    LexusFacebookThousandToOneSeeMoreButtonXpath = "(.//button[@class='cta'][contains(text(), 'See more')])[1]",
    LexusFacebookThousandToOneTitleTextXpath = ".//div[@class='work-text']/h3[contains(text(), 'Facebook 1000 to 1')]",
    HaagenDaazSeeMoreButtonXpath = "(.//button[@class='cta'][contains(text(), 'See more')])[2]",
    HaagenDaazTitleTextXpath = ".//div[@class='work-text']/h3[contains(text(), 'IN THE NAME OF REAL')]",
    TwoKEvolveSeeMoreButtonXpath = "(.//button[@class='cta'][contains(text(), 'See more')])[3]",
    TwoKEvolveTitleTextXpath = ".//div[@class='work-text']/h3[contains(text(), 'Evolve')]",
    NewBusinessTextElementsCSS = "div.contacts:nth-child(1)>div.home-contact-profile",
    NewBusinessMainTitleText = "NEW BUSINESS INQUIRIES",
    NewBusinessDirectorTitleText = "DIRECTOR OF NEW BUSINESS",
    NewBusinessDirectorNameText = "HOWARD MOGGS",
    HowardMoggsEmailButtonCSS = "a[href='mailto:howard.moggs@teamone-usa.com']",
    PressInquiriesTextElementsCSS = "div.contacts:nth-child(5)>div.home-contact-profile",
    PressInquiriesMainTitleText = "PRESS INQUIRIES",
    PressInquiriesDirectorTitleText = "DIRECTOR OF COMMUNICATIONS",
    PressInquiriesDirectorNameText = "ALLISON CITINO",
    AllisonCitinoEmailButtonCSS = "a[href='mailto:allison.citino@teamone-usa.com']",
    EmploymentOpportunitiesTextElementsCSS = "div.contacts:nth-child(3)>div.home-contact-profile",
    SeeOurOpenPositionsButtonXpath = "//a[@href='http://teamone-usa.com/careers/']/p[contains(text(), 'See our Open Positions')][1]",
    ExpertsInTheIndustryTitleTextCSS = "div.expert-headline>h1",
    AutomotiveTabXpath = ".//div[@class='industry-title-wrapper']/div/h1[contains(text(), 'Automotive')]",
    ConsumerElectronicsTabXpath = "(.//div[@class='industry-title-wrapper']/div/h1[contains(text(), 'Consumer Electronics')])",
    ConsumerPackagedGoodsTabXpath = "(.//div[@class='industry-title-wrapper']/div/h1[contains(text(), 'Consumer Packaged Goods')])",
    EntertainmentTabXpath = "(.//div[@class='industry-title-wrapper']/div/h1[contains(text(), 'Entertainment')])",
    FinancialServicesTabXpath = "(.//div[@class='industry-title-wrapper']/div/h1[contains(text(), 'Financial Services')])",
    GamingTabXpath = "(.//div[@class='industry-title-wrapper']/div/h1[contains(text(), 'Gaming')])",
    SportsTabXpath = "(.//div[@class='industry-title-wrapper']/div/h1[contains(text(), 'Sports')])", 
    TravelAndHospitalityTabXpath = "(.//div[@class='industry-title-wrapper']/div/h1[contains(text(), 'Travel and Hospitality')])"    
    )



    
    
    
ContactPageMap = dict(
    TeamOneGraphicCSS = ".intrologo>img[src='../wp-content/uploads/2013/07/contact_header_to.jpg']",
    TeamOneAddressTextXpath = ".//div[@class='address']/h5[contains(text(), '13031 W. Jefferson Boulevard')]",
    TeamOneOfficeHoursTextXpath = ".//div[@class='address']/h5[contains(text(), 'Office Hours')]",
    TeamOnePhoneNumberCSS = "div.address>p>a[href='tel:(310) 437-2500']",
    TeamOneGetDirectionsLinkCSS = "div.address>p>a[href='https://maps.google.com/maps?q=13031+W.+Jefferson+Blvd.+Los+Angeles,+CA+90094']",
    TeamOneGetDirectionsPageTitleText = "Google Maps",
    TeamOneGetDirectionsURLText = "https://www.google.com/maps/place/13031+W+Jefferson+Blvd,+Los+Angeles,+CA+90094/@33.9755657,-118.4261542,17z/data=!4m2!3m1!1s0x80c2b09b6710f02d:0xaf916d5184698496",
    TeamOneEmailLinkCSS = "div.address>p>a[href='mailto:info@teamone-usa.com']",
    TwitterGrayButtonCSS = "div.social>a>img[alt='twitter-bird-grey']",
    FacebookGrayButtonCSS = "div.social>a>img[alt='facebook-grey']",
    GooglePlusGrayButtonCSS = "div.social>a>img[alt='googleplus-grey']",
    LinkedInGrayButtonCSS = "div.social>a>img[alt='linkedin-grey']",
    InstagramGrayButtonCSS = "div.social>a>img[src='../wp-content/themes/img/icons/contact_social_ins.jpg']",
    )


CareersPageMap = dict(
    CareersTitleTextXpath = ".//div[@class='copy span careers']/h1[contains(text(), 'Careers')]"
    )

    
    
    
