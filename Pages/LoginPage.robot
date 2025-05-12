*** Settings ***
Library    SeleniumLibrary
Library    ../Helper/ExcelKeywords.py
Resource    ../Helper/common.robot

*** Variables ***
${LOCATOR_USERNAME_FIELD}            //input[@placeholder="Username"]
${LOCATOR_PASSWORD_FIELD}            //input[@placeholder="Password"]
${LOCATOR_LOGIN_BUTTON}              //button[@type='submit']
${LOCATOR_DASHBOARD}                 //h6[normalize-space()='Dashboard']

*** Keywords ***
Open Login Page
    [Arguments]    ${url}
    Open Browser    ${URL}    chrome
    Maximize Browser Window

Enter Credentials
    [Arguments]    ${username}    ${password}
    Wait Until Element Is Visible    ${LOCATOR_USERNAME_FIELD}    timeout=10
    Input Text    ${LOCATOR_USERNAME_FIELD}    ${username}

    Wait Until Element Is Visible    ${LOCATOR_PASSWORD_FIELD}    timeout=15
    Input Text    ${LOCATOR_PASSWORD_FIELD}    ${password}

    Wait Until Element Is Visible    ${LOCATOR_LOGIN_BUTTON}    timeout=10
    Click Element    ${LOCATOR_LOGIN_BUTTON}
    Sleep    2s
    Wait Until Element Is Visible    ${LOCATOR_DASHBOARD}    timeout=30    error=Dashboard did not become visible


Verify Login Success
    Wait Until Element Is Visible    ${LOCATOR_DASHBOARD}    timeout=30    error=Dashboard did not become visible
    Page Should Contain    Dashboard
