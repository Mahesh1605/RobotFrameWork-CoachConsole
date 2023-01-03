*** Settings ***
Documentation   Ganesh Project
Library         SeleniumLibrary
*** Variables ***
${URL}          http://staging.bkimechanical.com/login
${Email}        //input[@type='email']
${Password}     //input[@type='password']
${Submit}       //button[@type='submit']
*** Test Cases ***
Open Browser
    Open the MyCoach browser
Login
    Open the MyCoach browser
    Valid Login
*** Keywords ***
Open the MyCoach browser
    Create Webdriver    Chrome      executable_path=C:\\Users\\ananthamahesh.yeruva\\Downloads\\chromedriver_win32\\chromedriver.exe
    Go To               ${URL}
    Maximize Browser Window
Valid Login
    Input Text          ${Email}              sampleemail@gmail.com
    Input Password      ${Password}           123123
    Click Button        ${Submit}
