from BasePage                           import BasePage, IncorrectPageException
from TeamOne.Constants                  import TeamOne_Constants
from TeamOne.UIMaps.GlobalUIMap         import PageTitlesAndURLsMap
import time
from selenium.common.exceptions import NoSuchElementException


class GlobalsPage(BasePage):

    def __init__(self, driver):
        super(GlobalsPage, self).__init__(driver)
        #self.refresh_page()

        
    def user_is_taken_to_expected_page(self, ExpectedURL, 
                                       ExpectedPageTitle=None, 
                                       waitTime=None, 
                                       locatorMode=None, 
                                       ElementLocator=None):
        try:
            self.wait_for_element_visibility(waitTime, locatorMode, 
                                             ElementLocator)
            self.verify_correct_link_title(ExpectedPageTitle)
        except:
            pass
        finally:
            self.verify_correct_link_url(ExpectedURL)        

    def user_is_taken_to_About_page(self):
        self.user_is_taken_to_expected_page(PageTitlesAndURLsMap['AboutUsPageURL'], 
                                        PageTitlesAndURLsMap['AboutUsPageTitle'], 10, "xpath",
                                        PageTitlesAndURLsMap['AboutElementPageLoadXpath']
                                            )
    
    '''
    def user_is_taken_to_About_page(self):
        self.wait_for_element_visibility(10, "xpath", 
                                         PageTitlesAndURLsMap['AboutElementPageLoadXpath'])
        self.verify_correct_link_title(PageTitlesAndURLsMap['AboutUsPageTitle'])
        self.verify_correct_link_url(PageTitlesAndURLsMap['AboutUsPageURL'])
        '''

    def user_is_taken_to_Careers_page(self):
        self.wait_for_element_visibility(10, "xpath", 
                                         PageTitlesAndURLsMap['CareersElementPageLoadXpath'])
        self.verify_correct_link_title(PageTitlesAndURLsMap['CareersPageTitle'])
        self.verify_correct_link_url(PageTitlesAndURLsMap['CareersPageURL'])

    def user_is_taken_to_Lexus_Facebook_1000_page(self):
        self.wait_for_element_visibility(10, "xpath", 
                                         PageTitlesAndURLsMap['LexusFacebookThousandToOnePageLoadXpath']) 
        self.verify_correct_link_url(PageTitlesAndURLsMap['LexusFacebookThousandToOneLinkURL'])
        
    def user_is_taken_to_Haagen_Daaz_Name_of_Real_page(self):
        self.wait_for_element_visibility(10, "xpath", 
                                         PageTitlesAndURLsMap['HaagenDaazNameOfRealPageLoadXpath'])
        self.verify_correct_link_url(PageTitlesAndURLsMap['HaagenDaazLinkURL'])
        
    def user_is_taken_to_2k_Evolve_page(self):
        time.sleep(2)
        self.wait_for_element_visibility(10, "xpath", 
                                         PageTitlesAndURLsMap['TwoKEvolvePageLoadXpath'])
        self.verify_correct_link_url(PageTitlesAndURLsMap['TwoKEvolveLinkURL'])

    
    def user_is_taken_to_automotive_work_page(self):
        time.sleep(2)
        self.wait_for_element_visibility(10, "cssSelector", 
                                         PageTitlesAndURLsMap['AutomotiveWorkPageLoadCSS'])
        self.verify_correct_link_url(PageTitlesAndURLsMap['AutomotiveWorkLinkURL'])   
