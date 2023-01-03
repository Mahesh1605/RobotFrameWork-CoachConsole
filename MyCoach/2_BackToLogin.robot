*** Settings ***
Documentation   To validate the Back to login form
Library         SeleniumLibrary
Test Setup      Open the MyCoach browser
Test Teardown   Close Browser
Resource        ResourceFile.robot
Library         BuiltIn


*** Test Cases ***
Validate User Is Able To Go Back To Login Page
    Click On forgot password link
    Click On Back to login

*** Keywords ***
Click On forgot password link
    Click Link      ${ForgotPassword_link}
Click On Back to login
    Click Link      ${BackTOLogin_link}
