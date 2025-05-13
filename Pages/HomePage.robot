*** Settings ***
Library    SeleniumLibrary
Library    ../Helper/ExcelKeywords.py
Resource    ../Pages/LoginPage.robot
Resource    ../Pages/HomePage.robot
Resource    ../Helper/common.robot

*** Variables ***
${url}  https://opensource-demo.orangehrmlive.com/web/index.php/dashboard/index
${LOCATOR_DROP_DOWN}  //span[@class="oxd-userdropdown-tab"]
${LOCATOR_DROP_DOWN_OPTIONS}  //ul[@class="oxd-dropdown-menu"]
${LOCATOR_ABOUT_OPTION}      //a[normalize-space()='About']
${LOCATOR_ABOUT_SE}    //div[@role='document']
${LOCATOR_SUPPORT_OPTION}      //a[normalize-space()='Support']
${EXPECTED_URL}   https://opensource-demo.orangehrmlive.com/web/index.php/help/support
${LOCATOR_CHANGE_PASSWORD}   //a[normalize-space()='Change Password']
${PASSWORD_URL}      https://opensource-demo.orangehrmlive.com/web/index.php/pim/updatePassword
${LOCATOR_LOGOUT_BUTTON}      //a[normalize-space()='Logout']
${LOGIN_PAGE_URL}         https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
*** Keywords ***

Landing on Home Page
    Initialize Login Data
    Open Login Page    ${URL}
    Enter Credentials    ${USERNAME}     ${PASSWORD}
    
    
Verify Home Page
    Sleep    2s
#    Wait Until Element Is Visible    ${LOCATOR_HAMBURGER_BUTTON}
    Page Should Contain    Dashboard

Verify Home Page After Login
    Initialize Login Data
    Open Login Page    ${URL}
    Enter Credentials    ${USERNAME}    ${PASSWORD}
    Verify Home Page

Test Setup
   Landing On Home Page
   Verify Home Page