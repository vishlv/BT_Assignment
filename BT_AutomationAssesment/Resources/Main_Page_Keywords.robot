*** Settings ***
Library         SeleniumLibrary
Resource       ../TestData/Locators.robot
Resource        ../Resources/Commom_methods.robot        
*** Keywords ***
Cookes_handling
    Wait And Click      ${manage_cookie_setts}
    Wait And Click     ${reject_all_btn}
    Wait Until Element Is Visible    ${cookie_preference_message}
    ${msg}      Get Text    ${cookie_preference_message}
    Should Be Equal As Strings    ${msg}    ${expected_cookie_msg}
    Click Element    ${Cookies_window_close}
    
Navigation_to_mobile_page
    Mouse Over    ${nav_mobile_menu}
    Wait_and_click    xpath://a[text()='Mobile phones']        #${nav_mobile_Mobile_phone}

