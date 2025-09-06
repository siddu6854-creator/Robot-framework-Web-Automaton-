*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/keywords/common_keywords.robot
Resource   ../resources/page_objects/login_page.robot

*** Variables ***
${URL}    https://parabank.parasoft.com/parabank/index.htm
${BROWSER}    Chrome

*** Test Cases ***
Open Parabank Home Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    15s
    Capture Page Screenshot    ../resources/locators/parabank_home.png
    [Teardown]    Close Browser
