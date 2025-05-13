*** Settings ***
Library    SeleniumLibrary
Resource    ../Pages/LoginPage.robot
Resource    ../Pages/HomePage.robot
Library    ../Helper/ExcelKeywords.py
Resource    ../Helper/common.robot
#Test Setup    Landing On Home Page
#Test Teardown    Close Browser


#*** Test Cases ***
#Verify Hamburger Button
#    Open Login Page  ${url}
#    Enter Credentials   ${username}    ${password}
#    Click Element  ${LOCATOR_HAMBURGER_BUTTON}
#    Wait Until Element Is Visible   ${LOCATOR_SIDE_PANEL}

*** Keywords ***
Verify Home Page After Login
    Wait Until Element Is Visible    ${LOCATOR_DASHBOARD}    timeout=30    error=Dashboard did not become visible
    Page Should Contain    Dashboard

*** Test Cases ***
#Verify Home Page After Login
#    Initialize Login Data
#    Open Login Page    ${URL}
#    Enter Credentials    ${USERNAME}    ${PASSWORD}
#    Verify Home Page

Verify DropDown
   Test Setup
   Click Element    ${LOCATOR_DROP_DOWN}
   Wait Until Element Is Visible    ${LOCATOR_DROP_DOWN_OPTIONS}


Verifying About DropDown Option
   Test Setup
   Click Element    ${LOCATOR_DROP_DOWN}
   Wait Until Element Is Visible    ${LOCATOR_DROP_DOWN_OPTIONS}
   Click Element    ${LOCATOR_ABOUT_OPTION}
    Wait Until Element Is Visible    ${LOCATOR_ABOUT_SE}
    [Teardown]    Close Browser


Verifying Support DropDown Option
   Test Setup
   Click Element    ${LOCATOR_DROP_DOWN}
   Wait Until Element Is Visible    ${LOCATOR_DROP_DOWN_OPTIONS}
   Click Element    ${LOCATOR_SUPPORT_OPTION}
   Location Should Be  ${EXPECTED_URL}
   [Teardown]    Close Browser

Verifying Change Password DropDown Option
   Test Setup
   Click Element    ${LOCATOR_DROP_DOWN}
   Wait Until Element Is Visible    ${LOCATOR_DROP_DOWN_OPTIONS}
   Click Element    ${LOCATOR_CHANGE_PASSWORD}
   Location Should Be  ${PASSWORD_URL}
   [Teardown]    Close Browser

Verifying Logout DropDown Option
   Test Setup
   Click Element    ${LOCATOR_DROP_DOWN}
   Wait Until Element Is Visible    ${LOCATOR_DROP_DOWN_OPTIONS}
   Click Element    ${LOCATOR_LOGOUT_BUTTON}
   Location Should Be  ${LOGIN_PAGE_URL}
   [Teardown]    Close Browser



