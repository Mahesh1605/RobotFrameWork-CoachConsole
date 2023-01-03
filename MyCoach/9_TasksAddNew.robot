*** Settings ***
Documentation   To Create a New Task
Library         SeleniumLibrary
Test Setup      Open the MyCoach browser
#Test Teardown   Close Browser
Resource        ResourceFile.robot
Library         BuiltIn

*** Test Cases ***
Create a New Event
    Fill the login form with valid details
    Click on Tasks > Add New
    #Click on Tasks > Add By Batch
    #Click on Tasks > View Batches

*** Keywords ***
Fill the login form with valid details
    Input Text      name:email       ${Valid_user}
    Input Password  name:password    ${Valid_password}
    Click Button                     ${login_button}
    Set Selenium Implicit Wait      15 second
    Click Button                     ${Verify_button}
    Wait Until Location Is           ${Event_url}
Click on Tasks > Add New
    Click Element                    ${Tasks}
    Click Element                    ${AddNewTask}
    Wait Until Location Is           ${Tasks_AddNewUrl}
    Click Element                    ${Tips_Advanced}
    Click Element                    ${Advanced_Recipients}
    Input Text                       name:raw_expr_0             (district=150)
    Click Element                    ${Content_Owner}
    Scroll ELement Into View         ${Timbuktu_Test_College}
    Click ELement                    ${Timbuktu_Test_College}
    Click Element                    ${Task_Title}
    Input Text                       name:title                   ${TitleTask}
    Click Element                    ${Switch2PlainText}
    Click Element                    ${Description}
    Input Text                       name:text                    ${TaskDetails}
    Click Element                    ${Task_Release_Date}
    Input Text                       name:release_date            ${Date}
    Click Element                    ${Task_DeadLine_Type}
    Scroll ELement Into View         ${Hard}
    Click Element                    ${Hard}
    Click Element                    ${Task_DeadLine}
    Input Text                       name:deadline                ${Dead_Date}
    Click Element                    ${Completion Headline}
    Input Text                       name:congrats_title          ${Completion_Text}





















#Click on Tasks > Add By Batch
    #Click Element       ${Tasks}
    #Click Element       ${TasksAddByBatch}
#Click on Tasks > View Batches
    #Click Element       ${Tasks}
    #Click Element       ${TasksViewBatches}


