*** Settings ***
Documentation   To Create a New WorkSpace
Library         SeleniumLibrary
Test Setup      Open the MyCoach browser
#Test Teardown   Close Browser
Resource        ResourceFile.robot
Library         BuiltIn
*** Test Cases ***
Create a New Event
    Fill the login form with valid details
    Click on Workspaces > Add New
*** Keywords ***
Fill the login form with valid details
    Input Text      name:email       ${Valid_user}
    Input Password  name:password    ${Valid_password}
    Click Button    ${login_button}
    Set Selenium Implicit Wait      15 second
    Click Button    ${Verify_button}
    Wait Until Location Is      ${Event_url}
Click on Workspaces > Add New
    Click Element       ${Workspaces}
    Click Element       ${AddNewWorkspace}

