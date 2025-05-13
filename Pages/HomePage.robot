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
${LOCATOR_UPGRADE_BUTTON}      //button[@class="oxd-glass-button orangehrm-upgrade-button"]
${UPGRADE_URL}     https://opensource-demo.orangehrmlive.com/web/index.php/dashboard/index
${LOCATOR_HELP_BUTTON}       //button[@title="Help"]
${HELP_URL}               https://starterhelp.orangehrm.com/hc/en-us
${LOCATOR_SEARCH_BAR}    //input[@placeholder="Search"]
${SEARCH_TEXT1}         Directory
${DIRECTORY_MENU}       //span[normalize-space()='Directory']
${DIRECTORY_URL}         https://opensource-demo.orangehrmlive.com/web/index.php/directory/viewDirectory
${SEARCH_TEXT2}         Admin
${ADMIN_MENU}       //span[normalize-space()='Admin']
${ADMIN_URL}         https://opensource-demo.orangehrmlive.com/web/index.php/admin/viewSystemUsers
${SEARCH_TEXT3}        PIM
${PIM_MENU}       //span[normalize-space()='PIM']
${PIM_URL}         https://opensource-demo.orangehrmlive.com/web/index.php/pim/viewEmployeeList
${SEARCH_TEXT4}        Leave
${LEAVE_MENU}       //span[normalize-space()='Leave']
${LEAVE_URL}         https://opensource-demo.orangehrmlive.com/web/index.php/leave/viewLeaveList
${SEARCH_TEXT5}        Time
${TIME_MENU}       //span[normalize-space()='Leave']
${TIME_URL}         https://opensource-demo.orangehrmlive.com/web/index.php/leave/viewLeaveList
${SEARCH_TEXT6}        Recruitment
${RECRUITMENT_MENU}       //span[normalize-space()='Recruitment']
${RECRUITMENT_URL}         https://opensource-demo.orangehrmlive.com/web/index.php/recruitment/viewCandidates






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