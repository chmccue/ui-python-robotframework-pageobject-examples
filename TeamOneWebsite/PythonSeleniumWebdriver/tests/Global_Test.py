from TeamOne.Constants              import TeamOne_Constants
from TeamOne.BaseTestCase           import BaseTestCase
from TeamOne.pages.BasePage         import BasePage
import unittest, nose
from nose.plugins.attrib import attr
from hamcrest                       import *
from TeamOne.UIMaps.GlobalUIMap     import URLPageList, FooterNavMap, GlobalNavMap
from selenium.common.exceptions     import NoSuchElementException


class GlobalTest(BaseTestCase, unittest.TestCase):

    def setUp(self):
        super(GlobalTest, self).setUp()
        self.navigate_to_page(TeamOne_Constants['Base_URL'])
        self.BasePage_obj = BasePage(self.driver)

    
        
    def test_imageCheckTest(self):
        for link in URLPageList:
            #print TeamOne_Constants['Base_URL'] + link
            self.BasePage_obj.go_to_page(TeamOne_Constants['Base_URL'] + link)
            self.BasePage_obj.verify_correct_link_url(TeamOne_Constants['Base_URL'] + link)
            self.BasePage_obj.scan_for_broken_source_links()

    
    def test_footerNavContentIncludingShareButtonsAndLegalTextTest(self):
        for link in URLPageList:
            self.BasePage_obj.go_to_page(TeamOne_Constants['Base_URL'] + link)
            for value in FooterNavMap.itervalues():
                #print value
                self.BasePage_obj.is_element_present(10, "cssSelector", value)
    
    
    def tearDown(self):
        super(GlobalTest, self).tearDown()
        

if __name__ == "__main__":
    unittest.main()
    