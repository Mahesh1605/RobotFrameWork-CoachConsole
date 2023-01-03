*** Settings ***
Documentation   To Create a New Tip
Library         SeleniumLibrary
Test Setup      Open the MyCoach browser
Test Teardown   Close Browser
Resource        ResourceFile.robot
Library         BuiltIn
*** Test Cases ***
Create a New Event
    Fill the login form with valid details
    Click on Tips > Add New
*** Keywords ***
Fill the login form with valid details
    Input Text      name:email       ${Valid_user}
    Input Password  name:password    ${Valid_password}
    Click Button    ${login_button}
    Set Selenium Implicit Wait      15 second
    Click Button    ${Verify_button}
    sleep   5s
    Wait Until Location Is      ${Event_url}
Click on Tips > Add New
    Click Element                   ${Tips}
    Click Element                   ${AddNewTip}
    Wait Until Location Is          ${Tips_AddNewUrl}
    Click Element                   ${Tips_Advanced}
    Click Element                   ${Advanced_Recipients}
    Input Text                      name:raw_expr_0             (district=150)
    Click Element                   ${Content_Owner}
    Scroll ELement Into View        ${Timbuktu_Test_College}
    Click ELement                   ${Timbuktu_Test_College}
    Click Element                   ${Tips_Title}
    Input Text                      name:name                   ${TitleTips}
    Click Element                   ${Tips_calltoaction}
    Input Text                      name:call_to_action         ${Tipscall2action}
    Click Element                   ${BackGroundColor}
    Scroll Element Into View        ${BGColor}
    Click Element                   ${BGColor}
    Click Element                   ${Switch2PlainText}
    Click Element                   ${Details}
    Input Text                      name:text                    ${TipDetails}
    Click Element                   ${Tip_Date}
    Input Text                      name:date_to_send                    ${Current_Date}
    Click Element                   ${Category}
    Click Element                   ${Category_career}
    Click Button                    ${SAVE_button}
    Wait Until Location Is          ${Tips_Url}
    Page Should Contain             ${Tipscall2action}

