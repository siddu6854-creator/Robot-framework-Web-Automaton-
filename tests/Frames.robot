*** Settings ***
Library      SeleniumLibrary 


*** Variables ***
${URl}      https://testautomationpractice.blogspot.com/
# Select Frame
# Unselect Frame

*** Test Cases ***
TC_004 frame
    Open Browser    ${URl}     chrome
    Maximize Browser Window 
    # Select Frame   footer-2-1
    # Input Text  input1   Siddu 
    # Click Element  btn1
    Drag And Drop   draggable   droppable
    Sleep  5s 
# Select Frame
# Unselect Frame