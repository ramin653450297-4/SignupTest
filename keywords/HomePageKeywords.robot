*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Then future skill should display OTP page with message as "ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์"
    Wait Until Page Contains    ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์    10s
    Page Should Contain    ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์
