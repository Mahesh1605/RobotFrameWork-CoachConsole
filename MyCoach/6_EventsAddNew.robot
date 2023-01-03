*** Settings ***
Documentation   To Create a New Event using plain text with Advanced Recipients
Library         SeleniumLibrary
Test Setup      Open the MyCoach browser
#Test Teardown   Close Browser
Resource        ResourceFile.robot
Library         BuiltIn
*** Test Cases ***
Create a New Event
    Fill the login form with valid details
    Click on Events > Add New
    Adding a New Event with Advanced Recipients
Clone an Event
    Fill the login form with valid details
    Click on Events > Clone
Cancel a Delete Event
    Fill the login form with valid details
    Click on Event > Cancel
Delete an Event
    Fill the login form with valid details
    Click on Event > Delete
Sorting the Events
    Fill the login form with valid details
    Sorting with Status > Not Sent
    Sorting with Status > Sent
    Sorting with Author > Desc Order
    Sorting with Author > Asc Order
    Sorting with Date to Send > Desc Order
    Sorting with Date to Send > Asc Order
    Sorting with Details > Desc Order
    Sorting with Details > Asc Order
    Sorting with Id > Desc Order
    Sorting with Id > Asc Order
Switch to Calendar View
    Fill the login form with valid details
    Click on Events > Calendar View
    Click On Events > List View
Search form the list
    Fill the login form with valid details
    Click on Flows > Search


*** Keywords ***
Fill the login form with valid details
    Input Text      name:email       ${Valid_user}
    Input Password  name:password    ${Valid_password}
    Click Button    ${login_button}
    Set Selenium Implicit Wait      10 second
    Click Button    ${Verify_button}
    Wait Until Element Is Visible      ${Event_title}
Click on Events > Add New
    Click Element       ${AddNewEvent}
    Wait Until Element Is Visible      ${AddNewEvent_title}
Adding a New Event with Advanced Recipients
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
    Sleep                               1s
    CLick ELement                       ${Quarter}
    Press Keys                          None      ESC




    Click Element                   ${Advanced}
    Click Element                   ${Advanced_Recipients}
    Input Text                      name:raw_expr_0             (district=150)
    Click Element                   ${Content_Owner}
    Scroll ELement Into View        ${Timbuktu_Test_College}
    Click ELement                   ${Timbuktu_Test_College}
    Click Element                   ${Click_EventTitle}
    Input Text                      name:name                  ${NewEventTitle}
    Click Element                   ${Event_Date}
    Input Text                      name:start_date            Nov 18, 2022
    Click Button                    ${Switch2PlainText}
    Click Element                   ${Details}
    Input Text                      name:text                  ${Event_DetailsText}
    Click Element                   ${Category}
    Click Element                   ${Category_career}
    Click Button                    ${SAVE_button}
    Wait Until Page Contains        ${Event_DetailsText}

Click on Events > Clone
    Click Link                         ${Click_Event}
    Sleep                              5s
    Click Element                      ${Clone}
    Sleep                              5s
    Click Element                      ${Events}
    Sleep                              3s
    Click Button                       ${Leave_button}

Click on Event > Cancel
    Click Link                          ${Click_Event}
    Sleep                               5s
    Click Button                        ${Delete}
    Sleep                               3s
    Click Button                        ${Cancel_button}

Click on Event > Delete
    Click Link                          ${Click_Event}
    Sleep                               5s
    Click Button                        ${Delete}
    Sleep                               3s
    Click Button                        ${Delete_button}
    Wait Until Location Is              ${Event_url}

Sorting with Status > Not Sent
    Click Element                       ${Events}
    Sleep                               2s
    Click Element                       ${Status}
    Click Element                       ${Status_NotSent}
    Sleep                               2s
    Location Should Be                  https://console.horse.mycoachapp.org/events?status=not_sent

Sorting with Status > Sent
    Click Element                       ${Events}
    Sleep                               2s
    Click Element                       ${Status}
    Click Element                       ${Status_Sent}
    Sleep                               2s
    Location Should Be                  https://console.horse.mycoachapp.org/events?status=sent

Sorting with Author > Desc Order
    Click Element                       ${Events}
    Sleep                               2s
    Click Element                       ${Sort}
    Click Element                       ${Sort_Author}
    Sleep                               1s
    Click Element                       ${Order}
    Click Element                       ${Order_Desc}
    Sleep                               3s
    Location Should Be                  https://console.horse.mycoachapp.org/events?sortBy=created_by_user_id

Sorting with Author > Asc Order
    Click Element                       ${Events}
    Sleep                               2s
    Click Element                       ${Sort}
    Click Element                       ${Sort_Author}
    Sleep                               1s
    Click Element                       ${Order}
    CLick Element                       ${Order_Asc}
    Sleep                               2s
    Location Should Be                  https://console.horse.mycoachapp.org/events?sortBy=created_by_user_id&sortOrder=asc

Sorting with Date to Send > Desc Order
    Click Element                       ${Events}
    Sleep                               2s
    Click Element                       ${Sort}
    Click Element                       ${Sort_DatetoSend}
    Sleep                               1s
    Click Element                       ${Order}
    Click Element                       ${Order_Desc}
    Sleep                               2s
    Location Should Be                  https://console.horse.mycoachapp.org/events?sortBy=date_to_send

Sorting with Date to send > Asc Order
    Click Element                       ${Events}
    Sleep                               2s
    Click Element                       ${Sort}
    Click Element                       ${Sort_DatetoSend}
    Sleep                               1s
    Click Element                       ${Order}
    CLick Element                       ${Order_Asc}
    Sleep                               2s
    Location Should Be                  https://console.horse.mycoachapp.org/events?sortBy=date_to_send&sortOrder=asc

Sorting with Details > Desc Order
    Click Element                       ${Events}
    Sleep                               2s
    Click Element                       ${Sort}
    Click Element                       ${Sort_Details}
    Sleep                               1s
    Click Element                       ${Order}
    Click Element                       ${Order_Desc}
    Sleep                               2s
    Location Should Be                  https://console.horse.mycoachapp.org/events?sortBy=text

Sorting with Details > Asc Order
    Click Element                       ${Events}
    Sleep                               2s
    Click Element                       ${Sort}
    Click Element                       ${Sort_Details}
    Sleep                               1s
    Click Element                       ${Order}
    CLick Element                       ${Order_Asc}
    Sleep                               2s
    Location Should Be                  https://console.horse.mycoachapp.org/events?sortBy=text&sortOrder=asc

Sorting with Id > Desc Order
    Click Element                       ${Events}
    Sleep                               2s
    Click Element                       ${Sort}
    Click Element                       ${Sort_Id}
    Sleep                               1s
    Click Element                       ${Order}
    Click Element                       ${Order_Desc}
    Sleep                               2s
    Location Should Be                  https://console.horse.mycoachapp.org/events

Sorting with Id > Asc Order
    Click Element                       ${Events}
    Sleep                               2s
    Click Element                       ${Sort}
    Click Element                       ${Sort_Id}
    Sleep                               1s
    Click Element                       ${Order}
    CLick Element                       ${Order_Asc}
    Sleep                               2s
    Location Should Be                  https://console.horse.mycoachapp.org/events?sortOrder=asc

Click on Events > Calendar View
    Click Link                          ${Events}
    Sleep                               5s
    Click Button                        ${Calendar_View}
    Sleep                               2s
    Location Should Be                  https://console.horse.mycoachapp.org/events?view=calendar

Click On Events > List View
    Click Button                        ${List_View}
    Sleep                               2s
    Location Should Be                  https://console.horse.mycoachapp.org/events

Click on Flows > Search
    Click Element                       ${Events}
    Sleep                               2s
    Click Element                       ${Search}
    Input Text                          name:search         ${Search_Text}

