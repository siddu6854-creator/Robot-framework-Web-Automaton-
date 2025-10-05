*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${APPLICATION_LOGIN_URL}    https://practice.expandtesting.com/login
${BROWSER}                  chrome

*** Keywords ***
Launch the browser
    Open Browser  ${APPLICATION_LOGIN_URL}  ${BROWSER}
    Maximize Browser Window

Enter Username
    [Arguments]   ${Username}
    Wait Until Page Contains Element    id:username
    Input Text   id:username    ${Username}
    
Enter Password
    [Arguments]   ${Password}
    Wait Until Page Contains Element    id:password
    Input Text   id:password   ${Password}

Click on Login Button
    Scroll Element Into View    xpath://button[@type="submit"]
    Wait Until Element Is Visible     xpath://button[text()='Login']
    Sleep    3s
    
    Wait Until Element Is Enabled       xpath://button[text()='Login']
    Click Element     xpath://button[text()='Login']

get Successful login message
    ${Login_message}   Get Text   class:subheader
    Log To Console      ${Login_message}
    Should Be Equal As Strings      ${Login_message}    Welcome to the Secure Area. When you are done click logout below.