from selenium                                 import webdriver
from selenium.webdriver.support.ui            import WebDriverWait
from selenium.webdriver.support.select        import Select
from selenium.webdriver.support               import expected_conditions as EC
from selenium.webdriver.common.by             import By
from abc                                      import abstractmethod
from TeamOne.Constants                        import LocatorMode
from selenium.common.exceptions               import NoSuchElementException
from hamcrest                                 import *
import time
from selenium.webdriver.common.action_chains import ActionChains

class BasePage(object):

    def __init__(self, driver):
        self.driver = driver
        self._verify_page()
    
    @abstractmethod
    def _verify_page(self):
        """
        This method verifies that we are on the correct page.
        """
    
    def refresh_page(self):
        self.driver.refresh()
        #self.driver.refresh()
        
    def is_element_present(self, waitTime, locatorMode, Locator):
        '''
        try: self.driver.find_element(by=how, value=what)
        except NoSuchElementException: return False
        return True
        '''
        element = None
        try:
            if locatorMode == LocatorMode.ID:
                element = WebDriverWait(self.driver, waitTime).\
                  until(EC.visibility_of_element_located((By.ID, Locator)))
                return True
            elif locatorMode == LocatorMode.NAME:
                element = WebDriverWait(self.driver, waitTime).\
                  until(EC.visibility_of_element_located((By.NAME, Locator)))
            elif locatorMode == LocatorMode.XPATH:
                element = WebDriverWait(self.driver, waitTime).\
                  until(EC.visibility_of_element_located((By.XPATH, Locator)))
            elif locatorMode == LocatorMode.CSS_SELECTOR:
                element = WebDriverWait(self.driver, waitTime).\
                  until(EC.visibility_of_element_located((By.CSS_SELECTOR, Locator)))
            else:
                raise Exception("Unsupported locator strategy.")
        except NoSuchElementException: return False
        return element

    def wait_for_element_visibility(self, waitTime, locatorMode, Locator):
        element = None
        if locatorMode == LocatorMode.ID:
            element = WebDriverWait(self.driver, waitTime).\
              until(EC.visibility_of_element_located((By.ID, Locator)))
        elif locatorMode == LocatorMode.NAME:
            element = WebDriverWait(self.driver, waitTime).\
              until(EC.visibility_of_element_located((By.NAME, Locator)))
        elif locatorMode == LocatorMode.XPATH:
            element = WebDriverWait(self.driver, waitTime).\
              until(EC.visibility_of_element_located((By.XPATH, Locator)))
        elif locatorMode == LocatorMode.CSS_SELECTOR:
            element = WebDriverWait(self.driver, waitTime).\
              until(EC.visibility_of_element_located((By.CSS_SELECTOR, Locator)))
        else:
            raise Exception("Unsupported locator strategy.")
        return element


    def element_should_not_be_visible(self, waitTime, locatorMode, Locator):
        element = None
        if locatorMode == LocatorMode.ID:
            element = WebDriverWait(self.driver, waitTime).\
              until(EC.invisibility_of_element_located((By.ID, Locator)))
        elif locatorMode == LocatorMode.NAME:
            element = WebDriverWait(self.driver, waitTime).\
              until(EC.invisibility_of_element_located((By.NAME, Locator)))
        elif locatorMode == LocatorMode.XPATH:
            element = WebDriverWait(self.driver, waitTime).\
              until(EC.invisibility_of_element_located((By.XPATH, Locator)))
        elif locatorMode == LocatorMode.CSS_SELECTOR:
            element = WebDriverWait(self.driver, waitTime).\
              until(EC.invisibility_of_element_located((By.CSS_SELECTOR, Locator)))
        else:
            raise Exception("Unsupported locator strategy.")
        return element


    def wait_until_element_clickable(self, waitTime, locatorMode, Locator):
        element = None
        if locatorMode == LocatorMode.ID:
            element = WebDriverWait(self.driver, waitTime).\
              until(EC.element_to_be_clickable((By.ID, Locator)))
        elif locatorMode == LocatorMode.NAME:
            element = WebDriverWait(self.driver, waitTime).\
              until(EC.element_to_be_clickable((By.NAME, Locator)))
        elif locatorMode == LocatorMode.XPATH:
            element = WebDriverWait(self.driver, waitTime).\
              until(EC.element_to_be_clickable((By.XPATH, Locator)))
        elif locatorMode == LocatorMode.CSS_SELECTOR:
            element = WebDriverWait(self.driver, waitTime).\
              until(EC.element_to_be_clickable((By.CSS_SELECTOR, Locator)))
        else:
            raise Exception("Unsupported locator strategy.")
        return element

    def page_url(self):
        return self.driver.current_url

    def switch_to_window(self, wHandle):
        self.driver.switch_to.window(wHandle)
        
    def switch_to_new_window(self):
        for i in self.driver.window_handles:
            if i != self.driver.window_handles[0]:
                self.driver.switch_to_window(i)
            
    def close_window(self):
        self.driver.close()
        
    def go_to_page(self, url):
        self.driver.get(url)

    def find_element(self, locatorMode, Locator):
        element = None
        if locatorMode == LocatorMode.ID:
            element = self.driver.find_element_by_id(Locator)
        elif locatorMode == LocatorMode.NAME:
            element = self.driver.find_element_by_name(Locator)
        elif locatorMode == LocatorMode.XPATH:
            element = self.driver.find_element_by_xpath(Locator)
        elif locatorMode == LocatorMode.CSS_SELECTOR: 
            element = self.driver.find_element_by_css_selector(Locator)
        else:
            raise Exception("Unsupported locator strategy.")
        return element
    
    
    def find_elements(self, locatorMode, Locator):
        element = None
        if locatorMode == LocatorMode.ID:
            element = self.driver.find_elements_by_id(Locator)
        elif locatorMode == LocatorMode.NAME:
            element = self.driver.find_elements_by_name(Locator)
        elif locatorMode == LocatorMode.XPATH:
            element = self.driver.find_elements_by_xpath(Locator)
        elif locatorMode == LocatorMode.CSS_SELECTOR: 
            element = self.driver.find_elements_by_css_selector(Locator)
        else:
            raise Exception("Unsupported locator strategy.")
        return element
    

    def fill_out_field(self, locatorMode, Locator, text):
        self.find_element(locatorMode, Locator).clear()
        self.find_element(locatorMode, Locator).send_keys(text)

    def click(self, waitTime, locatorMode, Locator):
        self.wait_until_element_clickable(waitTime, locatorMode, Locator).click()

    def scroll_page(self, waitTime, locatorMode, Locator):
        self.wait_for_element_visibility(waitTime, locatorMode, Locator)
        element_location = self.find_element(locatorMode, Locator)
        self.driver.execute_script("return arguments[0].scrollIntoView();", element_location)
        self.driver.execute_script("window.scrollBy(0, -150);")
        
    def scroll_and_click(self, waitTime, locatorMode, Locator):
        self.wait_until_element_clickable(waitTime, locatorMode, Locator)
        #self.scroll_page(waitTime, locatorMode, Locator)
        self.click(waitTime, locatorMode, Locator)
        
    def mouse_over(self, waitTime, locatorMode, Locator):
        #element_to_hover_over = self.find_element(locatorMode, Locator)
        self.wait_for_element_visibility(waitTime, locatorMode, Locator)
        element_to_hover_over = self.find_element(locatorMode, Locator)
        hover = ActionChains(self.driver).move_to_element(element_to_hover_over)
        hover.perform()
        
    def get_element_text(self, locatorMode, Locator):
        self.find_element(locatorMode, Locator).text
        
    #Consider deleting this, as it's not currently in use.
    def wait_for_page_load(self):
        self.driver.implicitly_wait(5)
        
    
    def assert_text_in_element(self, textToMatch, waitTime, locatorMode, Locator):
        try:
            element_text = self.wait_for_element_visibility(waitTime, locatorMode, Locator).text
            assert_that(element_text, contains_string(textToMatch))
            return "\nAssert PASSED for %s" %textToMatch
        except:
            return "\nAssert FAILED.  %s not found in %s. *****************************" %(textToMatch, element_text)
        
        '''
        element_text = self.wait_for_element_visibility(waitTime, locatorMode, Locator).text
        assert_that(element_text, contains_string(textToMatch))
        return "\nAssert PASSED for %s" %textToMatch
        '''
        
        
    def verify_correct_link_title(self, expected_page_title):
        actual_page_title = self.driver.title
        print "actual page title: %s" %actual_page_title
        if expected_page_title in actual_page_title and "404" not in actual_page_title and "Error" not in actual_page_title:
            print "\n%s matches %s." %(expected_page_title, actual_page_title)
            #pass
        else:
            print "\nError with %s not matching %s. *****************************" %(expected_page_title, actual_page_title)
        
    def verify_correct_link_url(self, expected_page_url):
        actual_page_url = self.driver.current_url
        #print "actual page url: %s" %actual_page_url
        if expected_page_url in actual_page_url and "error" not in actual_page_url:
            #print "\n%s matches %s." %(expected_page_url, actual_page_url)
            pass
        else:
            print "\nError with %s not matching %s. ****************************" %(expected_page_url, actual_page_url)
        
    def scan_for_broken_source_links(self):
        try:
            broken_images = self.find_elements("xpath", "(//img[@src=''])")
            current_url = self.driver.current_url
            if len(broken_images) != 0:
                print "\nNumber of possible broken images on page: %d\n" %(len(broken_images))
                
                print "CHECK PAGE FOR BROKEN LINKS: %s.\n\n" %current_url
        except:
            pass
        #finally: time.sleep(1)
        
        
class IncorrectPageException(Exception):
    """
    This exception should be thrown when trying to instantiate the wrong page.
    """

