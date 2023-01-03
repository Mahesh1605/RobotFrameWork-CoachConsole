*** Settings ***
Documentation   This is a resource file
Library  SeleniumLibrary


*** Variables ***
${MyCoach_Url}              https://console.horse.mycoachapp.org/login
${Valid_user}               murthy.upadhyayula@zenq.com
${Valid_password}           Letmein@123

${Invalid_user}             ananthamahesh@zenq.com
${Invalid_password}         Letmein@321

${login_button}
${Submit_button}
${Verify_button}
${SAVE_button}              //button[normalize-space()='Save']

${login_error_message}      css:.md-danger-theme
${Event_Delete}             //button[@ng-hide="ctrl.isLocked"]

${Email_error}              css:.md-input-message-animation
${Invalid_email_error}      //body[@class='layout-column md-toast-open-bottom']/md-toast

${Toast_message}                //span[@class="md-toast-text ng-binding flex"]



${ForgotPassword_link}           //a[@ui-sref='guest.forgotpass']
${BackToLogin_link}              //a[@ui-sref='guest.login']

${Settings}                     //span[@class="fas fa-cog ng-scope"]
${MyProfile}                    //button[normalize-space()='My Profile']
${Profile_link}                 https://console.horse.mycoachapp.org/profile
${Logout}                       //button[normalize-space()='Logout']

${District}                     //md-select[@name="district"]
${TestDistrict}                 //div[normalize-space()='Test District']
${College}                      //md-select[@name='college']
${Term}                         //md-select[@name='term']
${Cohort}                       //md-select[@name='cohort']
${Level}                        //md-select[@name='level']

${Advanced}                     //div[@class='md-label'][normalize-space()='Advanced']
${Advanced_Recipients}          //textarea[@aria-label="Recipient Group"]
${Content_Owner}                //md-select[@name='content_owner']
${Timbuktu_College}             //md-option[@id='select_option_2083']
${Quarter}                      //div[normalize-space()='Quarter']
${Semester}                     //div[normalize-space()='Semester']
${Trimester}                    //div[normalize-space()='Trimester']


${Leave_button}                //button[@md-autofocus="dialog.$type==='alert'"]
${Event_url}                  https://console.horse.mycoachapp.org/events
${AddNewEvent_title}          //h2[@class="md-headline flex-xs-100 ng-binding"]

${Event_title}                //h2[@class="md-headline flex"]

${AddNewEvent}                //md-list-item[@ng-href="/events/add"]
${EventTitle}                 //input[@aria-label="event title"]
${NewEventTitle}              This is an event created by Anantha while learning Automation on Robot Framework
${Details}                    //textarea[@ng-model="ctrl.model.text.formatted"]
${Event_Date}                 //input[@aria-label="start date"]
${Current_Date}               Nov 29, 2022
${Switch2PlainText}           //button[@ng-click="ctrl.changeContentType('text/plain')"]
${Event_DetailsText}          Successfully created an event by anantha using Automation on Robot Frameworks
${Category}                   //md-select[@aria-label="category"]
${Category_career}            //md-option[normalize-space()='Career']
${Click_Event}                //a[@href="/events/5000229"]




${Events}                    //a[@ng-href="/events"]
${Clone}                     //*[@id="content"]/header/fieldset/a
${Delete}                    //*[@id="content"]/header/fieldset/button
${Delete_button}             //button[@ng-click="dialog.hide()"]
${Cancel_button}             //button[@ng-click="dialog.abort()"]
${Status}                    //md-select[@name='status']
${Status_NotSent}            //div[normalize-space()='Not Sent']
${Status_Sent}               //div[normalize-space()='Sent']



${Tips_Advanced}                //div[@class='md-label'][normalize-space()='Advanced']
${Tips}                         //a[@ng-href="/tips"]
${Tips_Url}                     https://console.horse.mycoachapp.org/tips
${AddNewTip}                    //md-list-item[@ng-href="/tips/add"]
${Tips_AddNewUrl}               https://console.horse.mycoachapp.org/tips/add
${Tips_Title}                   //input[@aria-label="title"]
${TitleTips}                    This is a sample for automation
${Tips_calltoaction}            //textarea[@name='call_to_action']
${Tipscall2action}              Sample tip
${BackGroundColor}              //md-select[@ng-model='ctrl.model.background.color']
${BGColor}                      //div[normalize-space()='#29A0A1']
${TipDetails}                   Sample tip text
${Tip_Date}                     //input[@aria-label='date to send']




${Workspaces}               //a[@ng-href="/workspaces"]
${AddNewWorkspace}          //md-list-item[@ng-href="/workspaces/add"]

${Tasks}                    //a[@ng-href="/tasks"]
${AddNewTask}               //a[@ng-href="/tasks/add"]
${TasksAddByBatch}          //md-list-item[@ng-href="/tasks/add-batch"]
${TasksViewBatches}         //md-list-item[@ng-href="/tasks/batches"]
${Tasks_AddNewUrl}          https://console.horse.mycoachapp.org/tips/add
${Task_Title}               //input[@ng-model="ctrl.model.content_directory.title"]
${TitleTask}                This is a sample for automation
${Description}              //textarea[@ng-model="ctrl.model.description.formatted"]
${TaskDetails}              Happy Childern's Day
${Task_Release_Date}        //input[@name="release_date"]
${Date}                     Nov 14, 2022
${Task_DeadLine_Type}       //md-select-value[@id="select_value_label_15384"]
${Hard}                     //md-option[@value="hard"]
${Task_DeadLine}            //input[@id="input_15397"]
${Dead_Date}                Nov 17, 2022
${Completion Headline}      //input[@ng-model="ctrl.model.congrats.message"]
${Completion_Text}          Wish you happy childerns day

${Click_FLow}               //a[@href="/flows/100433"]
${Unpublish}                //button[@ng-click="ctrl.model.publish=false; ctrl.submitForm('form')"]
${Unpublished_FLow}         //a[@class='md-caption flex-nogrow ng-binding'][normalize-space()='ID#100433']

${Flow_URL}                 https://console.horse.mycoachapp.org/flows
${Flows}                    //a[@ng-href="/flows"]
${AddNewFlow}               //a[@ng-href="/flows/add"]
${Flow_Title}               //input[@ng-model="ctrl.model.show_in_content_directory.content_directory.title"]
${TitleFlow}                This is a sample flow created using automation
${Flow_Framingmessage}      //textarea[@ng-model="ctrl.model.show_in_content_directory.content_directory.framing_message"]
${FramingMessage}           Sample Framing message
${Flow_Release_Date}        //input[@ng-model='ctrl.model.show_in_content_directory.content_directory.release_date']
${Flow_DeadLine}            //input[@ng-model='ctrl.model.show_in_content_directory.content_directory.deadline.date']
${Name_Field}               //input[@ng-model='ctrl.model.name']
${Name}                     This is a sample text created using automation(RobotFrameworks)
${Type}                     //md-select[@ng-model='ctrl.model.type']
${Greeting}                 //md-option[@value="greeting"]
${Color}                    //md-select[@ng-model="ctrl.model.color"]
${#B261F4_Color}            //md-option[@value="#B261F4"]
${Publish_button}           //button[normalize-space()='Publish']
${Message_Field}            //textarea[@ng-model='ctrl.model.flow.message']
${Message}                  Hello This Greeting is created using Automation
${Publish}                  //button[@class="md-primary md-confirm-button md-button md-ink-ripple md-default-theme"]

${Sort}                       //md-select[@ng-model="ctrl.query.sortBy"]
${Sort_Id}                    //md-option[@value='id']
${Sort_Name}                  //md-option[@value='name']
${Sort_Type}                  //md-option[@value='type']
${Sort_Author}                //md-option[@value='created_by_user_id']
${Sort_DatetoSend}            //md-option[@value='date_to_send']
${Sort_Details}               //md-option[@value='text']

${Order}                      //md-select[@ng-model="ctrl.query.sortOrder"]
${Order_Asc}                  //md-option[@value='asc']
${Order_Desc}                 //md-option[@value='desc']

${Calendar_View}              //md-input-container[@class='flex-none hide show-gt-sm']//button[@aria-label='Calendar View'][normalize-space()='Calendar View']
${List_View}                  //md-input-container[@class='flex-none hide show-gt-sm']//button[@aria-label='List View'][normalize-space()='List View']

${Search}                     //input[@ng-model="ctrl.query.search"]
${Search_Text}                sample


${Colleges}                 //a[@ng-href="/colleges"]
${AddNewCollege}            //md-list-item[@ng-href="/colleges/add"]

${Districts}                //a[@ng-href="districts"]
${AddNewDistrict}           //md-list-item[@ng-href="/districts/add"]

${Users}                    //a[ng-href="users"]
${AddNewUser}               //md-list-item[@ng-href="users/add"]


*** Keywords ***
Open the MyCoach browser
    Create Webdriver    Chrome      executable_path=C:\\Users\\ananthamahesh.yeruva\\Downloads\\chromedriver_win32\\chromedriver.exe
    Go To               ${MyCoach_Url}
    Maximize Browser Window