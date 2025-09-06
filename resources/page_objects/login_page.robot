*** Variables ***
${LOGIN_LABEL}    xpath=//h2[text()='Customer Login']
${USERNAME_INPUT}    xpath=//input[@name='username']
${PASSWORD_INPUT}    xpath=//input[@name='password']
${LOGIN_BUTTON}    xpath=//input[@value='Log In']
${FORGOT_LINK}    xpath=//a[text()='Forgot login info?']
${REGISTER_LINK}    xpath=//a[text()='Register']

*** Keywords ***
Input Username
    [Arguments]    ${username}
    Input Text    ${USERNAME_INPUT}    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_INPUT}    ${password}

Click Login
    Click Button    ${LOGIN_BUTTON}

Click Forgot Login Info
    Click Link    ${FORGOT_LINK}

Click Register
    Click Link    ${REGISTER_LINK}
