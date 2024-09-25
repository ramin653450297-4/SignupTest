*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/SignupPageKeywords.robot
Resource        ../keywords/HomePageKeywords.robot
Variables       ../resources/config/config.yaml
Variables       ../resources/testdata/testdata.yaml
Suite Setup     Open Browser    ${baseUrl}    chrome
Suite Teardown  Close Browser

*** Test Cases ***
As a user, I want to signup successfully with valid data
    When user signup to future skill platform with ${signup_name}, ${signup_lastname}, ${signup_email}, ${signup_phone}, ${signup_password}, and ${signup_confirm_password}
    Then future skill should display OTP page with message as "ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์"

As a user, I fail to signup with invalid email
    When user signup to future skill platform with ${signup_name}, ${signup_lastname}, ${invalid_email}, ${signup_phone}, ${signup_password}, and ${signup_confirm_password}
    Then future skill should display error message as "กรุณากรอกอีเมลให้ถูกต้อง"
