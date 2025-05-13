*** Settings ***
Library    SeleniumLibrary
Resource    ../Pages/LoginPage.robot
Resource    ../Pages/HomePage.robot
Library    ../Helper/ExcelKeywords.py
Resource    ../Helper/common.robot
#Test Setup    Verify Home Page After Login
Test Teardown    Close Browser


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
   Landing On Home Page
   Verify Home Page
   Click Element    ${LOCATOR_DROP_DOWN}
   Wait Until Element Is Visible    ${LOCATOR_DROP_DOWN_OPTIONS}


