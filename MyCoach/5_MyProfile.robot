*** Settings ***
Documentation   To validate the MyProfile page
Library         SeleniumLibrary
Test Setup      Open the MyCoach browser
Test Teardown   Close Browser
Resource        ResourceFile.robot
Library         BuiltIn
*** Test Cases ***
Validate Succesful Logout
    Fill the login form with valid details
    MyProfile page from the console
*** Keywords ***
Fill the login form with valid details
    Input Text      name:email       ${Valid_user}
    Input Password  name:password    ${Valid_password}
    Click Button    ${login_button}
    Set Selenium Implicit Wait      15 second
    Click Button    ${Verify_button}
    Wait Until Location Is      ${Event_url}
MyProfile page from the console
    Click Element                  ${Settings}
    Click Element                  ${MyProfile}
    Wait Until Location Is         ${Profile_link}



