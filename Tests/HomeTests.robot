*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Resource    ../Pages/LoginPage.robot
Resource    ../Pages/HomePage.robot
Library    ../Helper/ExcelKeywords.py
Resource    ../Helper/common.robot
Test Setup    Test Setup
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

Verifying Upgrade Button
    Click Button    ${LOCATOR_UPGRADE_BUTTON}
    Sleep    7s
    Location Should Be   ${UPGRADE_URL}
    [Teardown]    Close Browser

Verifying Help Button
    Click Button   ${LOCATOR_HELP_BUTTON}
    Sleep   7s
    Location Should Be    ${UPGRADE_URL}
    [Teardown]    Close Browser

Verifying Search Bar Functionality - Directory
    Input Text  ${LOCATOR_SEARCH_BAR}   ${SEARCH_TEXT}
    Click Element    ${DIRECTORY_MENU}
    Location Should Be    ${DIRECTORY_URL}
    [Teardown]    Close Browser

Verifying Search Bar Functionality - Admin
    Input Text  ${LOCATOR_SEARCH_BAR}   ${SEARCH_TEXT2}
    Click Element    ${ADMIN_MENU}
    Location Should Be    ${ADMIN_URL}
    [Teardown]    Close Browser


Verifying Search Bar Functionality - PIM
    Input Text  ${LOCATOR_SEARCH_BAR}   ${SEARCH_TEXT3}
    Click Element    ${PIM_MENU}
    Location Should Be    ${PIM_URL}
    [Teardown]    Close Browser


Verifying Search Bar Functionality - Leave
    Input Text  ${LOCATOR_SEARCH_BAR}   ${SEARCH_TEXT4}
    Click Element    ${LEAVE_MENU}
    Location Should Be    ${LEAVE_URL}
    [Teardown]    Close Browser

Verifying Search Bar Functionality - Time
    Input Text  ${LOCATOR_SEARCH_BAR}   ${SEARCH_TEXT5}
    Click Element    ${TIME_MENU}
    Location Should Be    ${TIME_URL}
    [Teardown]    Close Browser


Verifying Search Bar Functionality - Recruitment
    Input Text  ${LOCATOR_SEARCH_BAR}   ${SEARCH_TEXT6}
    Click Element    ${RECRUITMENT_MENU}
    Location Should Be    ${RECRUITMENT_URL}
    [Teardown]    Close Browser

Verifying Search Bar Functionality - My Info
    Input Text  ${LOCATOR_SEARCH_BAR}   ${SEARCH_TEXT7}
    Click Element    ${MY_INFO_MENU}
    Location Should Be    ${MY_INFO_URL}
    [Teardown]    Close Browser

Verifying Search Bar Functionality - Performance
    Input Text  ${LOCATOR_SEARCH_BAR}   ${SEARCH_TEXT8}
    Click Element    ${PERFORMANCE_MENU}
    Location Should Be    ${PERFORMANCE_URL}
    [Teardown]    Close Browser

Verifying Search Bar Functionality - Dashboard
    Input Text  ${LOCATOR_SEARCH_BAR}   ${SEARCH_TEXT9}
    Click Element    ${DASHBOARD_MENU}
    Location Should Be    ${DASHBOARD_URL}
    [Teardown]    Close Browser

Verifying Search Bar Functionality - Maintenance
    Input Text  ${LOCATOR_SEARCH_BAR}   ${SEARCH_TEXT10}
    Click Element    ${MAINTENANCE_MENU}
    Location Should Be    ${MAINTENANCE_URL}
    [Teardown]    Close Browser

Verifying Search Bar Functionality - Claim
    Input Text  ${LOCATOR_SEARCH_BAR}   ${SEARCH_TEXT11}
    Click Element    ${CLAIM_MENU}
    Location Should Be    ${CLAIM_URL}
    [Teardown]    Close Browser

Verifying Search Bar Functionality - Buzz
    Input Text  ${LOCATOR_SEARCH_BAR}   ${SEARCH_TEXT12}
    Click Element    ${BUZZ_MENU}
    Location Should Be    ${BUZZ_URL}
    [Teardown]    Close Browser