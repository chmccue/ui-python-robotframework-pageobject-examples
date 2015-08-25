from BasePage                           import BasePage, IncorrectPageException
from TeamOne.Constants                  import TeamOne_Constants
from TeamOne.UIMaps.GlobalUIMap         import PageTitlesAndURLsMap, HomePageMap #AboutUsPageMap, CareersPageMap, WorkPageMap
import time
from selenium.common.exceptions import NoSuchElementException


class HomePage(BasePage):

    def __init__(self, driver):
        super(HomePage, self).__init__(driver)
        #self.refresh_page()
        
    
    def _verify_page(self):
        try:
            self.wait_for_element_visibility(10, "xpath", 
                                             HomePageMap['LaunchingTheRemarkableTextXpath'])
        except:
            raise IncorrectPageException
            
            


    def user_is_on_homepage(self):
        self.wait_for_element_visibility(10, "xpath",
                                         HomePageMap['LaunchingTheRemarkableTextXpath'])
            
    def Launching_the_Remarkable_graphic_is_present_on_page(self):
        self.wait_for_element_visibility(10, "xpath", HomePageMap['LaunchingTheRemarkableTextXpath'])
        
    def clicking_Read_More_About_Team_One_button(self):
        self.click(10, "xpath", 
                         HomePageMap['ReadMoreAboutTeamOneButtonXpath'])
        
    def scrolls_to_Experts_in_the_Industry_section(self):
        self.scroll_page(10, "cssSelector",
                         HomePageMap['ExpertsInTheIndustryTitleTextCSS'])

    
    def Click_Tile(self, tileButtonLocatorMode, tileButton, tileURLLink, 
                   tileElementLinkLocatorMode, tileElementLinkLocator):
        self.scrolls_to_Experts_in_the_Industry_section()
        self.click(10, tileButtonLocatorMode, tileButton)
        self.wait_for_element_visibility(10, tileElementLinkLocatorMode, tileElementLinkLocator)
        self.verify_correct_link_url(tileURLLink)

        '''
    def Click_Tile(self, tileButtonLocatorMode, tileButton, titleURLLink, tileElementLinkLocatorMode="xpath", tileElementLinkLocator="pass"):
        self.scrolls_to_Experts_in_the_Industry_section()
        self.click(10, tileButtonLocatorMode, tileButton)
        time.sleep(2)
        self.verify_correct_link_url(tileURLLink)
    
    
    def Verify_Tile_click_and_link_is_correct_Automotive(self):
        self.Click_Tile("xpath", HomePageMap['AutomotiveTabXpath'])
        '''
    
    
    def Verify_Tile_click_and_link_is_correct_Automotive(self):
        self.Click_Tile("xpath", HomePageMap['AutomotiveTabXpath'], PageTitlesAndURLsMap['AutomotiveWorkLinkURL'], 
                        "xpath", PageTitlesAndURLsMap['AutomotiveWorkPageLoadXpath'])
                        
        
    def Verify_Tile_click_and_link_is_correct_Consumer_Electronics(self):
        self.Click_Tile("xpath", HomePageMap['ConsumerElectronicsTabXpath'], PageTitlesAndURLsMap['ConsumerElectronicsWorkLinkURL'], 
                        "xpath", PageTitlesAndURLsMap['ConsumerElectronicsWorkPageLoadXpath'])
        
    def Verify_Tile_click_and_link_is_correct_Consumer_Packaged_Goods(self):
        self.Click_Tile("xpath", HomePageMap['ConsumerPackagedGoodsTabXpath'], PageTitlesAndURLsMap['ConsumerPackagedGoodsWorkLinkURL'], 
                       "xpath", PageTitlesAndURLsMap['ConsumerPackagedGoodsWorkPageLoadXpath'])
        
    def Verify_Tile_click_and_link_is_correct_Entertainment(self):
        self.Click_Tile("xpath", HomePageMap['EntertainmentTabXpath'], PageTitlesAndURLsMap['EntertainmentWorkLinkURL'], 
                       "xpath", PageTitlesAndURLsMap['EntertainmentWorkPageLoadXpath'])
        
    def Verify_Tile_click_and_link_is_correct_Financial_Services(self):
        self.Click_Tile("xpath", HomePageMap['FinancialServicesTabXpath'], PageTitlesAndURLsMap['FinancialServicesWorkLinkURL'], 
                       "xpath", PageTitlesAndURLsMap['FinancialServicesWorkPageLoadXpath'])
        
    def Verify_Tile_click_and_link_is_correct_Gaming(self):
        self.Click_Tile("xpath", HomePageMap['GamingTabXpath'], PageTitlesAndURLsMap['GamingWorkLinkURL'], 
                       "xpath", PageTitlesAndURLsMap['GamingWorkPageLoadXpath'])
        
    def Verify_Tile_click_and_link_is_correct_Sports(self):
        self.Click_Tile("xpath", HomePageMap['SportsTabXpath'], PageTitlesAndURLsMap['SportsWorkLinkURL'], 
                       "xpath", PageTitlesAndURLsMap['SportsWorkPageLoadXpath'])
        
    def Verify_Tile_click_and_link_is_correct_Travel_And_Hospitality(self):
        self.Click_Tile("xpath", HomePageMap['TravelAndHospitalityTabXpath'], PageTitlesAndURLsMap['TravelAndHospitalityWorkLinkURL'], 
                       "xpath", PageTitlesAndURLsMap['TravelAndHospitalityWorkPageLoadXpath'])

    def scrolls_to_Lexus_Facebook_1000_image(self):
        self.scroll_page(10, "xpath",
                         HomePageMap['LexusFacebookThousandToOneTitleTextXpath'])
        self.mouse_over(10, "xpath",
                        HomePageMap['LexusFacebookThousandToOneTitleTextXpath'])
    
    def user_clicks_Lexus_Facebook_1000_See_More_button(self):
        self.click(10, "xpath",
                   HomePageMap['LexusFacebookThousandToOneSeeMoreButtonXpath'])

    def scrolls_to_Haagen_Daaz_image(self):
        self.scroll_page(10, "xpath",
                         HomePageMap['HaagenDaazTitleTextXpath'])
        self.mouse_over(10, "xpath",
                        HomePageMap['HaagenDaazTitleTextXpath'])
        
    def user_clicks_Haagen_Daaz_Name_of_Real_See_More_button(self):
        self.click(10, "xpath",
                   HomePageMap['HaagenDaazSeeMoreButtonXpath'])
        
    def scrolls_to_2k_Evolve_image(self):
        self.scroll_page(10, "xpath",
                         HomePageMap['TwoKEvolveTitleTextXpath'])
        self.mouse_over(10, "xpath",
                        HomePageMap['TwoKEvolveTitleTextXpath'])

    def user_clicks_2k_Evolve_See_More_button(self):
        self.click(10, "xpath", HomePageMap['TwoKEvolveSeeMoreButtonXpath'])

    def scrolls_to_New_Business_Inquiries_text(self):
        self.scroll_page(10, "cssSelector", HomePageMap['NewBusinessTextElementsCSS'])
        
    def user_confirms_that_New_Business_title_text_is_present(self):
        self.wait_for_element_visibility(10, "cssSelector", HomePageMap['NewBusinessTextElementsCSS'])

    def New_Business_name_and_email_button_are_present(self):
        self.assert_text_in_element(HomePageMap['NewBusinessMainTitleText'], 10, "cssSelector", HomePageMap['NewBusinessTextElementsCSS'])
        self.assert_text_in_element(HomePageMap['NewBusinessDirectorTitleText'], 10, "cssSelector", HomePageMap['NewBusinessTextElementsCSS'])
        self.assert_text_in_element(HomePageMap['NewBusinessDirectorNameText'], 10, "cssSelector", HomePageMap['NewBusinessTextElementsCSS'])
        self.wait_for_element_visibility(10, "cssSelector", HomePageMap['HowardMoggsEmailButtonCSS'])

    def scrolls_to_Press_Inquiries_text(self):
        self.scroll_page(10, "cssSelector", HomePageMap['PressInquiriesTextElementsCSS'])
        
    def user_confirms_that_Press_Inquiries_title_text_is_present(self):
        self.wait_for_element_visibility(10, "cssSelector", HomePageMap['PressInquiriesTextElementsCSS'])
        
    def Press_Inquiries_Director_name_and_email_button_are_present(self):
        self.assert_text_in_element(HomePageMap['PressInquiriesMainTitleText'], 10, "cssSelector", HomePageMap['PressInquiriesTextElementsCSS'])
        self.assert_text_in_element(HomePageMap['PressInquiriesDirectorTitleText'], 10, "cssSelector", HomePageMap['PressInquiriesTextElementsCSS'])
        self.assert_text_in_element(HomePageMap['PressInquiriesDirectorNameText'], 10, "cssSelector", HomePageMap['PressInquiriesTextElementsCSS'])
        self.wait_for_element_visibility(10, "cssSelector", HomePageMap['AllisonCitinoEmailButtonCSS'])
        
    def scrolls_to_Employment_Opportunities_text(self):
        self.scroll_page(10, "cssSelector", HomePageMap['EmploymentOpportunitiesTextElementsCSS'])
        
    def user_confirms_that_Employment_Opportunities_title_text_is_present(self):
        self.wait_for_element_visibility(10, "cssSelector", HomePageMap['EmploymentOpportunitiesTextElementsCSS'])
        
    def user_clicks_See_Our_Open_Positions_button(self):
        self.click(10, "xpath", HomePageMap['SeeOurOpenPositionsButtonXpath'])
        
        
 