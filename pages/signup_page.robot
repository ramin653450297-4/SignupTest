*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SIGNUP_BUTTON}    xpath=//a[text()='สมัครสมาชิก']
${NAME_FIELD}       id=name
${EMAIL_FIELD}      id=email
${PASSWORD_FIELD}   id=password
${PHONE_FIELD}      id=phone
${CONFIRM_BUTTON}   xpath=//button[text()='สมัครสมาชิก']
${OTP_TEXT}         xpath=//p[contains(text(),'ระบบได้ส่งรหัส OTP')]

*** Keywords ***
Open Future Skill Website
    Open Browser    https://futureskill.co    chrome
    Maximize Browser Window

Click Signup Button
    Click Element    ${SIGNUP_BUTTON}

Fill Signup Form
    Input Text    ${NAME_FIELD}    Test User
    Input Text    ${EMAIL_FIELD}   testuser@example.com
    Input Text    ${PASSWORD_FIELD}    mypassword123
    Input Text    ${PHONE_FIELD}   0123456789

Submit Signup Form
    Click Element    ${CONFIRM_BUTTON}

Verify OTP Page
    Page Should Contain Element    ${OTP_TEXT}

Close Browser
    Close Browser
