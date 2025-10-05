*** Settings ***
Resource    ../page_objects/homePage.resource

*** Keywords ***
Successful Login
    [Arguments]    ${Username}    ${Password}
    homePage.Launch the browser
    homePage.Enter Username    ${Username}
    homePage.Enter Password    ${Password}
    Click on Login Button
    get Successful login message
    # Add more steps as needed