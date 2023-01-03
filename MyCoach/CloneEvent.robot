*** Settings ***
Documentation   To Delete an Event created
Resource        ResourceFile.robot
Library         SeleniumLibrary
Test Setup      Open the MyCoach browser
#Test Teardown   Close Browser
Library         BuiltIn
*** Test Cases ***
Clone an Event
    Fill the login form with valid details
    Click on Event > Clone
Cancel a Delete Event
    Fill the login form with valid details
    Click on Event > Cancel
Delete an Event
    Fill the login form with valid details
    Click on Event > Delete
*** Keywords ***
Fill the login form with valid details
    Input Text      name:email       ${Valid_user}
    Input Password  name:password    ${Valid_password}
    Click Button    ${login_button}
    Set Selenium Implicit Wait      10 second
    Click Button    ${Verify_button}
    Wait Until Element Is Visible      ${Event_title}
Cancel a Delete Event
    Wait Until Page Contains            ${Event_DetailsText}
    Click Link                          ${Event_DetailsText}
    Click Button                        ${Delete}
    Wait Until Page Contains            ${Delete_popup}
    Click Button                        ${Pop-up_Cancel}
Delete an Event
    Wait Until Page Contains            ${Event_DetailsText}
    Click Link                          ${Event_DetailsText}
    Click Element                       //*[@id="content"]/header/fieldset/a
    #Click Button                        ${Delete}
    #Wait Until Page Contains            ${Delete_popup}
    #Click Button                        ${Pop-up_Delete}



