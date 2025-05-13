*** Settings ***
Library    BuiltIn
Library    ../Helper/ExcelKeywords.py

*** Variables ***
${EXCEL_FILE}     Resources/LoginData.xlsx
${LOGIN_SHEET_NAME}     LoginData

*** Keywords ***
Initialize Login Data
    ${url}=           Read Excel Data    ${EXCEL_FILE}    ${LOGIN_SHEET_NAME}    A2
    ${username}=      Read Excel Data    ${EXCEL_FILE}    ${LOGIN_SHEET_NAME}    B2
    ${password}=      Read Excel Data    ${EXCEL_FILE}    ${LOGIN_SHEET_NAME}    C2

    Set Suite Variable    ${URL}           ${url}
    Set Suite Variable    ${USERNAME}      ${username}
    Set Suite Variable    ${PASSWORD}      ${password}

Open Login Page In Headless Mode
    [Arguments]    ${url}
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].FirefoxOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Create WebDriver    Firefox    options=${options}
    Go To    ${url}