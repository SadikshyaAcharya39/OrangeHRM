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