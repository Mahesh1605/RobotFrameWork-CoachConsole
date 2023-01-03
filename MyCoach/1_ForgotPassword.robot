*** Settings ***
Documentation   To Check the forgot password
Library         SeleniumLibrary
Test Setup      Open the MyCoach browser
Test Teardown   Close Browser
Resource        ResourceFile.robot
Library         BuiltIn

*** Test Cases ***
Forgot Password Resetting with Valid User
    Resetting password as valid user
Forgot Password Resetting with Invalid User
   Resetting password as an Invalid user

*** Keywords ***
Resetting password as valid user
    Click Link      ${ForgotPassword_link}
    Input Text      name:email      ${Valid_user}
    Click Button    ${Submit_button}
Resetting password as an Invalid user
    Click Element   ${ForgotPassword_link}
    Input Text      name:email      ${Invalid_user}
    Click Button    ${Submit_button}
    Wait Until Element is Visible       //span[@class="md-toast-text ng-binding flex"]
