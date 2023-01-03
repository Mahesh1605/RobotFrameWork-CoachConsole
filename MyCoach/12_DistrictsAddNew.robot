*** Settings ***
Documentation   To Create a New District
Library         SeleniumLibrary
Test Setup      Open the MyCoach browser
#Test Teardown   Close Browser
Resource        ResourceFile.robot
Library         BuiltIn
*** Test Cases ***
Create a New Event
    Fill the login form with valid details
    Click on Districts > Add New
*** Keywords ***
Fill the login form with valid details
    Input Text      name:email       ${Valid_user}
    Input Password  name:password    ${Valid_password}
    Click Button    ${login_button}
    Set Selenium Implicit Wait      15 second
    Click Button    ${Verify_button}
    Wait Until Location Is      ${Event_url}
Click on Districts > Add New
    Click Element       ${Districts}
    Click Element       ${AddNewDistrict}

