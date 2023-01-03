*** Settings ***
Documentation   To Create a New Flow
Library         SeleniumLibrary
Test Setup      Open the MyCoach browser
Test Teardown   Close Browser
Resource        ResourceFile.robot
Library         BuiltIn
*** Test Cases ***
Create a New Flow
    Fill the login form with valid details
    Click on Flows > Add New
    Adding a New Flow Using Advanced Recipients
Publish an Unpublished Flow
    Fill the login form with valid details
    Click on Flows > Publish
Clone a Flow
    Fill the login form with valid details
    Click on Flows > Clone
Cancel a Delete Flow
    Fill the login form with valid details
    Click on Flows > Cancel Delete
Delete a Flow
    Fill the login form with valid details
    Click on Flows > Confirm Delete
Sorting the Flows
    Fill the login form with valid details
    Sorting with Id and Asc Order
    Sorting with Name and Desc Order
    Sorting with Name and Asc Order
    Sorting with Type and Desc Order
    Sorting with Type and Asc Order

*** Keywords ***
Fill the login form with valid details
    Input Text                         name:email               ${Valid_user}
    Input Password                     name:password            ${Valid_password}
    Click Button                       ${login_button}
    Set Selenium Implicit Wait         15 second
    Click Button                       ${Verify_button}
    Wait Until Location Is             ${Event_url}
    Sleep                              5s
Click on Flows > Add New
    Click Element                      ${Flows}
    Click Element                      ${AddNewFlow}
Adding a New Flow Using Advanced Recipients
    Click Element                      ${Advanced}
    Click Element                      ${Advanced_Recipients}
    Input Text                         name:raw_expr_0             (district=150)
    Click Element                      ${Content_Owner}
    Scroll ELement Into View           ${Timbuktu_Test_College}
    Click ELement                      ${Timbuktu_Test_College}
    Click Element                      ${Flow_Title}
    Input Text                         name:cd_title                ${TitleFlow}
    Click Element                      ${Flow_Framingmessage}
    Input Text                         name:cd_framing_message      ${FramingMessage}
    Click Element                      ${Flow_Release_Date}
    Input Text                         name=cd_release_date         ${Current_Date}
    Click Element                      ${Flow_DeadLine}
    Input Text                         name=cd_deadline             ${Current_Date}
    Click Element                      ${Name_Field}
    Input Text                         name=name                    ${Name}
    Click Element                      ${Type}
    Click ELement                      ${Greeting}
    Click Element                      ${Color}
    Click Element                      ${#B261F4_Color}
    Click Element                      ${Message_Field}
    Input Text                         name:message                 ${Message}
    Click Button                       ${SAVE_button}
    Sleep                              5s
    Click Button                       ${Publish_button}
    Click Button                       ${Publish}
    Wait Until Location is             ${Flow_URL}

Click on Flows > Publish
    Click Element                      ${Flows}
    Scroll Element Into View           ${Unpublished_FLow}
    Click link                         ${Unpublished_FLow}
    Sleep                              5s
    Click Button                       ${Publish_button}
    Click Button                       ${Publish}
    Wait Until Location is             ${Flow_URL}

Click on Flows > Clone
    Click Element                      ${Flows}
    Click link                         ${Click_FLow}
    Sleep                              5s
    Click Element                      ${Clone}
    Sleep                              5s
    Click Element                      ${Flows}
    Sleep                              3s
    Click Button                       ${Leave_button}

Click on Flows > Cancel Delete
    Click Element                      ${Flows}
    Click link                         ${Click_FLow}
    Sleep                              5s
    Click Element                      ${Delete}
    Click Button                       ${Cancel_button}

Click on Flows > Confirm Delete
    Click Element                      ${Flows}
    Click link                         ${Click_FLow}
    Sleep                              5s
    Click Element                      ${Delete}
    Click Button                       ${Delete_button}
    Wait Until Location is             ${Flow_URL}

Sorting with Id and Asc Order
    Click Element                       ${Flows}
    Sleep                               3s
    Click Element                       ${Sort}
    Click Element                       ${Sort_Id}
    Click Element                       ${Order}
    CLick Element                       ${Order_Asc}
    Sleep                               2s
    Location Should Be                  https://console.horse.mycoachapp.org/flows?sortOrder=asc
Sorting with Name and Desc order
    Click Element                       ${Sort}
    Click Element                       ${Sort_Name}
    Click Element                       ${Order}
    Click Element                       ${Order_Desc}
    Sleep                               3s
    Location Should Be                  https://console.horse.mycoachapp.org/flows?sortBy=name
Sorting with Name and Asc order
    Click Element                       ${Sort}
    Click Element                       ${Sort_Name}
    Click Element                       ${Order}
    CLick Element                       ${Order_Asc}
    Sleep                               2s
    Location Should Be                  https://console.horse.mycoachapp.org/flows?sortBy=name&sortOrder=asc
Sorting with Type and Desc order
    Click Element                       ${Sort}
    Click Element                       ${Sort_Type}
    Click Element                       ${Order}
    Click Element                       ${Order_Desc}
    Sleep                               2s
    Location Should Be                  https://console.horse.mycoachapp.org/flows?sortBy=type
Sorting with Type and Asc order
    Click Element                       ${Sort}
    Click Element                       ${Sort_Type}
    Click Element                       ${Order}
    CLick Element                       ${Order_Asc}
    Sleep                               2s
    Location Should Be                  https://console.horse.mycoachapp.org/flows?sortBy=type&sortOrder=asc




