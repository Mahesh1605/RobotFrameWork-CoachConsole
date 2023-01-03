*** Settings ***
Documentation   To validate the MyCoach application
Library         SeleniumLibrary
Test Setup      Open the MyCoach browser
Test Teardown   Close Browser
Resource        ResourceFile.robot
Library         BuiltIn

*** Test Cases ***
#1_ForgotPassword.robot
Forgot Password Resetting with Valid User
    Resetting password as valid user
Forgot Password Resetting with Invalid User
   Resetting password as an Invalid user

#2_BackToLogin.robot
Validate User Is Able To Go Back To Login Page
    Click On forgot password link
    Click On Back to login

#3_LogOut.robot
Validate Succesful Logout
    Fill the login form with valid details
    Logout from the console

#4_LogIn.robot
Validate Succesful Login
    Fill the login form with valid details
Validate Unsuccessful Login
    Fill the login form with invalid details

#5_MyProfile.robot
Validate Succesful Logout
    Fill the login form with valid details
    MyProfile page from the console


*** Keywords ***
Resetting password as valid user
    Click Link      ${ForgotPassword_link}
    Input Text      name:email      ${Valid_user}
    Click Button    ${Submit_button}
Resetting password as an Invalid user
    Click Element   ${ForgotPassword_link}
    Input Text      name:email      ${Invalid_user}
    Click Button    ${Submit_button}
    Wait Until Element is Visible       ${Toast_message}
#----------------------------------------------------------------------------------------#
Click On forgot password link
    Click Link      ${ForgotPassword_link}
Click On Back to login
    Click Link      ${BackTOLogin_link}
#----------------------------------------------------------------------------------------#
Logout from the console

#----------------------------------------------------------------------------------------#
Fill the login form with invalid details
    Input Text      name:email      ${Invalid_user}
    Input password  name:password   ${valid_password}
    Click Button    ${login_button}
    Wait Until Element is Visible       ${login_error_message}
Fill the login form with valid details
    Input Text      name:email       ${Valid_user}
    Input Password  name:password    ${Valid_password}
    Click Button    ${login_button}
    Set Selenium Implicit Wait      15 second   #Enter Code with in 15seconds and do not hit enter button
    Click Button    ${Verify_button}
    Wait Until Location Is      ${Event_url}
#----------------------------------------------------------------------------------------#
MyProfile page from the console
    Click Element                  ${Settings}
    Click Element                  ${MyProfile}
    Wait Until Location Is         ${Profile_link}
#----------------------------------------------------------------------------------------#
