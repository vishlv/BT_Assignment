*** Settings ***
Resource        ../Resources/Commom_methods.robot
Resource        ../Resources/Mobile_Pages_keywords.robot
Resource        ../Resources/Main_Page_Keywords.robot

Test Setup      Launch_Application_without_accepting_cookies
Test Teardown     Close Browser
*** Test Cases ***
Check for 30% off and double data
    Navigation_to_mobile_page
    Verify_number_of_banners_below See Handset details
    Open_SIM_only_deals



