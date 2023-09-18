*** Settings ***
Library          SeleniumLibrary
Resource       ../TestData/Locators.robot
Resource        ../Resources/Main_Page_Keywords.robot
*** Keywords ***
Launch_Application_without_accepting_cookies
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    ${Status}   Run Keyword And Return Status        Wait Until Element Is Visible    ${cookie_frame}
    IF    ${Status} == True
        Select Frame    ${cookie_frame}
        Cookes_handling
        Unselect Frame
    END

Wait_and_click
    [Arguments]     ${loc}
    Wait Until Element Is Visible    ${loc}     timeout=10s
    Wait Until Element Is Enabled    ${loc}     timeout=10s
    Click Element    ${loc}

Verify_title
    [Arguments]     ${title}
    ${acctual_title}    Get Title
    Should Be Equal As Strings    ${title}    ${acctual_title}


