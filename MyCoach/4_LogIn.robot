*** Settings ***
Documentation   To validate the login form
Library         SeleniumLibrary
Test Setup      Open the MyCoach browser
Test Teardown   Close Browser
Resource        ResourceFile.robot
Library         BuiltIn


*** Test Cases ***
Validate Succesful Login
    #open the MyCoach browser
    Fill the login form with valid details
Validate Unsuccessful Login
    #open the mycoach browser
    Fill the login form with invalid details

*** Keywords ***
Fill the login form with valid details
    Input Text      name:email       ${Valid_user}
    Input Password  name:password    ${Valid_password}
    Click Button    ${login_button}
    Set Selenium Implicit Wait      15 second   #Enter Code with in 15seconds and do not hit enter button
    Click Button    ${Verify_button}
    Wait Until Location Is      ${Event_url}
Fill the login form with invalid details
    Input Text      name:email      ${Invalid_user}
    Input password  name:password   ${valid_password}
    Click Button    ${login_button}
    Wait Until Element is Visible       ${login_error_message}
