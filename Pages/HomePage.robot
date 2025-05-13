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
${TIME_MENU}       //span[normalize-space()='Time']
${TIME_URL}         https://opensource-demo.orangehrmlive.com/web/index.php/time/viewEmployeeTimesheet
${SEARCH_TEXT6}        Recruitment
${RECRUITMENT_MENU}       //span[normalize-space()='Recruitment']
${RECRUITMENT_URL}         https://opensource-demo.orangehrmlive.com/web/index.php/recruitment/viewCandidates
${SEARCH_TEXT7}        My Info
${MY_INFO_MENU}       //span[normalize-space()='My Info']
${MY_INFO_URL}         https://opensource-demo.orangehrmlive.com/web/index.php/pim/viewPersonalDetails/empNumber/7
${SEARCH_TEXT8}        Performance
${PERFORMANCE_MENU}       //span[normalize-space()='Performance']
${PERFORMANCE_URL}         https://opensource-demo.orangehrmlive.com/web/index.php/performance/searchEvaluatePerformanceReview
${SEARCH_TEXT9}        Dashboard
${DASHBOARD_MENU}       //span[normalize-space()='Dashboard']
${DASHBOARD_URL}         https://opensource-demo.orangehrmlive.com/web/index.php/dashboard/index
${SEARCH_TEXT10}        Maintenance
${MAINTENANCE_MENU}       //span[normalize-space()='Maintenance']
${MAINTENANCE_URL}         https://opensource-demo.orangehrmlive.com/web/index.php/maintenance/purgeEmployee
${SEARCH_TEXT11}        Claim
${CLAIM_MENU}       //span[normalize-space()='Claim']
${CLAIM_URL}         https://opensource-demo.orangehrmlive.com/web/index.php/claim/viewAssignClaim
${SEARCH_TEXT12}        Buzz
${BUZZ_MENU}       //span[normalize-space()='Buzz']
${BUZZ_URL}         https://opensource-demo.orangehrmlive.com/web/index.php/buzz/viewBuzz


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