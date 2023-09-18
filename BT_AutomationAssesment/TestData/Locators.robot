*** Variables ***
${url}      https://www.bt.com/
${browser}   Chrome
########################## Main Page Locators #######################################
${cookie_frame}   xpath://iframe[@title="TrustArc Cookie Consent Manager"]
${cookie_window_pop-up}  xpath=//div[@id="pop-div30945517286924261"]/div
${manage_cookie_setts}   css=a[class = shp]
${reject_all_btn}   css=div[class = mainContent] a[class = declineAllButtonLower]
${cookie_preference_message}    css:div[class = contentfield] p
${expected_cookie_msg}    You have successfully updated your cookie preferences.
${Cookies_window_close}     css:a[class = close]
${nav_mobile_menu}      xpath://span[text()='Mobile']//preceding::ul[@class='left-nav-ul']
${nav_mobile_Mobile_phone}      xpath://li/a[text()='Mobile phones']//preceding::ul[@class='left-nav-ul']

######################## Mobile Page Locators #######################################
${expected_mobile_pg_tile}      Mobile phone deals | New mobiles and Pay Monthly | BT Mobile
${mobile_banners_below_Handset_details}     css:div[class = flexpay-card_card_wrapper__Antym]
${btn_sim_only_deals}       xpath://a[@class='bt-btn bt-btn-primary']
${Sim_only_deals_page_title}     SIM Only Deals | Compare SIMO Plans & Contracts | BT Mobile
${offer_validation}     //div[text()='30% off and double data']/following::div/div/span[text()='was ' and text()='125GB']//../span[text()='Essential Plan']/following::span[text()='was ' and text()='£27']/../div[text()='18']/sub[text()='.' and text() = '90']/../../span[text()='Per month']
${btn_view_on_ECC}      //div[text()='250GB']/../../div/div[text()='18']//../../../div/a[text()='View on EE']