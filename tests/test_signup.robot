*** Settings ***
Library    ../pages/signup_page.robot

*** Test Cases ***
User Can Signup Successfully
    [Documentation]    ทดสอบการสมัครสมาชิก Future Skill
    Open Future Skill Website
    Click Signup Button
    Fill Signup Form
    Submit Signup Form
    Verify OTP Page
    Close Browser
