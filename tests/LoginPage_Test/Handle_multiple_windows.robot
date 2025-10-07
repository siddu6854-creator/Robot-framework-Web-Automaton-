*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${URl}          https://robotframework.org/#community

*** Test Cases ***
TC_001 Windows
    Open Browser    ${URl}   chrome
    Maximize Browser Window
    Sleep  2s
    Scroll Element Into View      //span[text()='RoboCon 2026 In-Person']
    click Element     //span[text()='RoboCon 2026 In-Person']
    @{List_windows}   Get Window Handles

    Switch Window   ${List_windows}[1]
    Sleep  5s
    Log Title
    FOR  ${val}  IN   @{List_windows}
        Switch Window   ${val}
        ${URLS}=  Get Location
        Log To console    ${val} 
        Log To Console   ${URLS}
        Log Title
    END

