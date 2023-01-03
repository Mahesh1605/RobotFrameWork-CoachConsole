*** Settings ***
Documentation   To validate the login & Logout
Library         SeleniumLibrary
Test Setup      Open the MyCoach browser
Test Teardown   Close Browser
Resource        ResourceFile.robot
Library         BuiltIn
*** Test Cases ***
Validate Succesful Logout
    Fill the login form with valid details
    #Profile Page from the console
    Logout from the console
*** Keywords ***
Fill the login form with valid details
    Input Text      name:email       ${Valid_user}
    Input Password  name:password    ${Valid_password}
    Click Button    ${login_button}
    Set Selenium Implicit Wait      15 second
    Click Button    ${Verify_button}
    Wait Until Location Is      ${Event_url}
Profile Page from the console
    Click Element                  ${Settings}
    Click Element                  ${MyProfile}
    Wait Until Location Is         ${Profile_link}
Logout from the console
    Click Element                  ${Settings}
    Scroll Element Into View       ${Logout}
    Click Element                  ${Logout}
    Wait Until Location Is        ${MyCoach_Url}



