*** Settings ***
Library      SeleniumLibrary 


*** Variables ***
${URl}      https://testautomationpractice.blogspot.com/


*** Test Cases ***
TC_003 Alerts
    Open Browser    ${URl}    chrome
    Maximize Browser Window  
    Click Element   alertBtn
    Sleep  4s
    Handle Alert  Accept
    Sleep  3s
    Click Element    promptBtn
    Sleep  4s
    Input Text Into Alert    Siddu   Accept
    Sleep  4s
    Click Element   alertBtn
    Handle Alert  dismiss


