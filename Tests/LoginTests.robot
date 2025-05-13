*** Settings ***
Library    SeleniumLibrary
Library    ../Helper/ExcelKeywords.py
Resource    ../Helper/common.robot
Resource    ../Pages/LoginPage.robot
Test Teardown    Close Browser

*** Test Cases ***
Successful Login With Valid Credentials
    [Documentation]    Verify user can login with valid credentials
    Initialize Login Data
#    Open Login Page    ${URL}
    Open Login Page In Headless Mode    ${URL}
    Enter Credentials    ${USERNAME}    ${PASSWORD}
    Click Login
    Verify Dashboard Visible
    [Teardown]    Close Browser


#Incorrect Username and Correct Password
#Correct Username and Incorrect Password
#Incorrect Username and Incorrect Password
#Empty Username and Password
#Username With Different Case And Correct Password
#Correct Username And Password With Different Case
#Both Username And Password With Wrong Case
#Username with leading/trailing spaces and Correct Password
#Correct Username and Password with leading/trailing spaces


*** Keywords ***
Click Login
    [Documentation]    Clicks on the login button
    Run Keyword And Ignore Error    Click Element    ${LOCATOR_LOGIN_BUTTON}


Verify Dashboard Visible
    [Documentation]    Verifies the dashboard is visible after login
    Wait Until Element Is Visible    ${LOCATOR_DASHBOARD}    timeout=30
    ...    error=Dashboard page did not load after successful login






