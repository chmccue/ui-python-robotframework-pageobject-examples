from TeamOne.Constants              import TeamOne_Constants
from TeamOne.BaseTestCase           import BaseTestCase
from TeamOne.pages.HomePage         import HomePage
from TeamOne.pages.GlobalsPage      import GlobalsPage
import unittest, nose
#from nose.plugins.attrib import attr


class HomePageTest(BaseTestCase, unittest.TestCase):

    def setUp(self):
        super(HomePageTest, self).setUp()
        self.navigate_to_page(TeamOne_Constants['Base_URL'])
        self.HomePage_obj = HomePage(self.driver)
        self.GlobalsPage_obj = GlobalsPage(self.driver)
        self.HomePage_obj.Launching_the_Remarkable_graphic_is_present_on_page()
        print "\n"
        
    def tearDown(self):
        super(HomePageTest, self).tearDown()
    
    
    def test_LaunchingTheRemarkableGraphicIsPresentOnPage(self):
        print "Launching the Remarkable graphic is present on page Test."
        self.HomePage_obj.user_is_on_homepage()
        self.HomePage_obj.Launching_the_Remarkable_graphic_is_present_on_page()
        
        
    def test_ClickingReadMoreAboutTeamOnebutton(self):
        print "Clicking Read More About Team One Button Test."
        self.HomePage_obj.user_is_on_homepage()
        self.HomePage_obj.clicking_Read_More_About_Team_One_button()
        self.GlobalsPage_obj.user_is_taken_to_About_page()
        
    
    def test_ClickingLexusFacebook1000Button(self):
        print "Clicking Facebook 1000 Button Test."
        self.HomePage_obj.user_is_on_homepage()
        self.HomePage_obj.scrolls_to_Lexus_Facebook_1000_image()
        self.HomePage_obj.user_clicks_Lexus_Facebook_1000_See_More_button()
        self.GlobalsPage_obj.user_is_taken_to_Lexus_Facebook_1000_page()
    
    def test_ClickingHaagenDaazButton(self):
        print "Clicking Haagen Daaz Button Test."
        self.HomePage_obj.user_is_on_homepage()
        self.HomePage_obj.scrolls_to_Haagen_Daaz_image()
        self.HomePage_obj.user_clicks_Haagen_Daaz_Name_of_Real_See_More_button()
        self.GlobalsPage_obj.user_is_taken_to_Haagen_Daaz_Name_of_Real_page()

    def test_Clicking2kEvolveButton(self):
        print "Clicking 2k Evolve Button Test."
        self.HomePage_obj.user_is_on_homepage()
        self.HomePage_obj.scrolls_to_2k_Evolve_image()
        self.HomePage_obj.user_clicks_2k_Evolve_See_More_button()
        self.GlobalsPage_obj.user_is_taken_to_2k_Evolve_page()

    
    def test_NewBusinessInquiriesTextAndElementsPresent(self):
        print "New Business Inquiries Text and Elements are present."
        self.HomePage_obj.user_is_on_homepage()
        self.HomePage_obj.scrolls_to_New_Business_Inquiries_text()
        self.HomePage_obj.user_confirms_that_New_Business_title_text_is_present()
        self.HomePage_obj.New_Business_name_and_email_button_are_present()
        
    def test_PressInquiriesTextAndElementsPresent(self):
        print "Press Inquiries Text and Elements are present."
        self.HomePage_obj.user_is_on_homepage()
        self.HomePage_obj.scrolls_to_Press_Inquiries_text()
        self.HomePage_obj.user_confirms_that_Press_Inquiries_title_text_is_present()
        self.HomePage_obj.Press_Inquiries_Director_name_and_email_button_are_present()

    def test_EmploymentOpportunitiesTextIsPresentAndClickingToCareersPage(self):
        print "Employment Opportunities Text is present and clicking to Careers page."
        self.HomePage_obj.user_is_on_homepage()
        self.HomePage_obj.scrolls_to_Employment_Opportunities_text()
        self.HomePage_obj.user_confirms_that_Employment_Opportunities_title_text_is_present()
        self.HomePage_obj.user_clicks_See_Our_Open_Positions_button()
        self.GlobalsPage_obj.user_is_taken_to_Careers_page()
        
        
    def test_ExpertsInTheIndustrySection_AutomotiveTile(self):
        print "Automotive Tile Test."
        self.HomePage_obj.Verify_Tile_click_and_link_is_correct_Automotive()
        #self.GlobalsPage_obj.user_is_taken_to_automotive_work_page()
    
    def test_ExpertsInTheIndustrySection_ConsumerElectronicsTile(self):
        print "Consumer Electronics Tile Test."
        self.HomePage_obj.Verify_Tile_click_and_link_is_correct_Consumer_Electronics()
        
    def test_ExpertsInTheIndustrySection_ConsumerPackagedGoodsTile(self):
        print "Consumer Packaged Goods Tile Test."
        self.HomePage_obj.Verify_Tile_click_and_link_is_correct_Consumer_Packaged_Goods()
        
    def test_ExpertsInTheIndustrySection_EntertainmentTile(self):
        print "Entertainment Tile Test."
        self.HomePage_obj.Verify_Tile_click_and_link_is_correct_Entertainment()
        
    def test_ExpertsInTheIndustrySection_FinancialServicesTile(self):
        print "Financial Services Tile Test."
        self.HomePage_obj.Verify_Tile_click_and_link_is_correct_Financial_Services()
        
    def test_ExpertsInTheIndustrySection_GamingTile(self):
        print "Gaming Tile Test."
        self.HomePage_obj.Verify_Tile_click_and_link_is_correct_Gaming()
        
    def test_ExpertsInTheIndustrySection_SportsTile(self):
        print "Sports Tile Test."
        self.HomePage_obj.Verify_Tile_click_and_link_is_correct_Sports()
        
    def test_ExpertsInTheIndustrySection_TravelAndHospitalityTile(self):
        print "Travel and Hospitality Tile Test."
        self.HomePage_obj.Verify_Tile_click_and_link_is_correct_Travel_And_Hospitality()
        

        
if __name__ == "__main__":
    unittest.main()
