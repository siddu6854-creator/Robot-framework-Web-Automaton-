*** Settings ***
Library     SeleniumLibrary 

*** Variables ***
${URl}      https://testautomationpractice.blogspot.com/


*** Test Cases ***
Tc_002 Drop_Down
    Open Browser   ${URl}   chrome
    Maximize Browser Window
    Sleep  3s
    Scroll Element Into View       country
    Select From List By Label    country    India
    Sleep  3s
    Select From List By Label  country    Brazil
    Sleep  3s
    