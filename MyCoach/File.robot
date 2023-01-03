*** Settings ***
Documentation   To Create a New Event
Library         SeleniumLibrary
Test Setup      Open the MyCoach browser
#Test Teardown   Close Browser
Resource        ResourceFile.robot
Library         BuiltIn

*** Test Cases ***
Create a New Event
    Fill the login form with valid details
    Click on Events > Add New
    Adding a New Event without Advanced Recipients
*** Keywords ***
Fill the login form with valid details
    Input Text                         name:email             ${Valid_user}
    Input Password                     name:password          ${Valid_password}
    Click Button                       ${login_button}
    Set Selenium Implicit Wait         15 second
    Click Button                       ${Verify_button}
    Wait Until Location Is             ${Event_url}
    Sleep                              5s
Click on Events > Add New
    Click Element                      ${AddNewEvent}
    Wait Until Element Is Visible      ${AddNewEvent_title}
Adding a New Event without Advanced Recipients
    #Select a district
    Click Element                       ${Districts}
    Scroll ELement Into View            ${TestDistrict}
    Click Element                       ${TestDistrict}
    Press Keys                          None     ESC
    #select a college
    Click Element                       ${College}
    Sleep                               1s
    Scroll Element Into View            ${Timbuktu_College}
    CLick ELement                       ${Timbuktu_College}
    Press Keys                          None      ESC
    #select a Term
    Click Element                       ${Term}
    CLick ELement                       ${Quarter}
    Press Keys                          None      ESC
