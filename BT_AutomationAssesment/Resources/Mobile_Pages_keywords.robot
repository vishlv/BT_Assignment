*** Settings ***
Library     SeleniumLibrary
Resource       ../TestData/Locators.robot
Resource        ../Resources/Commom_methods.robot

*** Keywords ***
Verify_number_of_banners_below See Handset details
    ${count_of_banners}     Get Element Count    ${mobile_banners_below_Handset_details}
    ${banner_count}     Convert To Integer    ${count_of_banners}
    IF    ${banner_count} <= 3
        Log    Banner counter is as expected
    ELSE
         Log    Banner counter is more than 3
    END

Open_SIM_only_deals
    Scroll Element Into View    ${btn_sim_only_deals}
    Click Element    ${btn_sim_only_deals}
    ${acctual_title}     Get Title
    Should Be Equal As Strings    ${acctual_title}    ${Sim_only_deals_page_title}
    Page Should Contain Element    ${offer_validation}
    Scroll Element Into View    ${btn_view_on_ECC}
    Capture Page Screenshot
    
    