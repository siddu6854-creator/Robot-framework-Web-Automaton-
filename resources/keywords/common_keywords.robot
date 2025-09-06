*** Keywords ***
Open Parabank Home Page
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    15s
    Capture Page Screenshot    ../resources/locators/parabank_home.png
    Close Browser
