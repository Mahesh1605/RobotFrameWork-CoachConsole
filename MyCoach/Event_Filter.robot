*** Settings ***
Documentation   To Delete an Event created
Resource        ResourceFile.robot
Library         SeleniumLibrary
Test Setup      Open the MyCoach browser
Test Teardown   Close Browser
Library         BuiltIn
*** Test Cases ***
Create a New Event
    Fill the login form with valid details
    Filter by Status_NotSent
    Filter by Status_Sent
    #Filter by From Date
    #Filter by To Date
    #Filter by Category
    #Filter by District
    #Filter by Colleges
    #Filter by Cohorts
    #Filter by Levels
    #Filter by Sort
    #Filter by Order
*** Keywords ***
Fill the login form with valid details
    Input Text      name:email       ${Valid_user}
    Input Password  name:password    ${Valid_password}
    Click Button    ${login_button}
    Set Selenium Implicit Wait      10 second
    Click Button    ${Verify_button}
    Wait Until Element Is Visible      ${Event_title}
Filter by Status_NotSent
    Wait Until Element Is Visible           ${Status}
    Click Element                           ${Status}
    Click Element                           ${Status_NotSent}
    Wait Until Element Is Visible       //md-chip-template[normalize-space()="Not Sent"]
Filter by Status_Sent
    Click Element                   ${Status}
    Scroll Element Into View        ${Status_Sent}
    Click Element                   ${Status_Sent}
    Wait Until Element Is Visible       //md-chip-template[normalize-space()="Sent"]
