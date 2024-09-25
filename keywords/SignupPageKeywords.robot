*** Keywords ***
When user signup to future skill platform with ${firstName}, ${lastName}, ${email}, ${phoneNumber}, ${password}, and ${confirmPassword}
    Click Signup Button
    Input Name    ${firstName}
    Input Lastname    ${lastName}
    Input Email    ${email}
    Input Phone    ${phoneNumber}
    Input Password    ${password}
    Input Confirm Password    ${confirmPassword}
    Checkbox Agree
    Submit Signup Form

Click Signup Button
    Wait Until Element Is Visible    xpath=//button[contains(text(), 'สมัครสมาชิก')]    10s
    Click Button    xpath=//button[contains(text(), 'สมัครสมาชิก')]

Input Name
    [Arguments]    ${firstName}
    Input Text    xpath=//input[@placeholder='ชื่อ']    ${firstName}

Input Lastname
    [Arguments]    ${lastName}
    Input Text    xpath=//input[@placeholder='นามสกุล']    ${lastName}

Input Email
    [Arguments]    ${email}
    Input Text    xpath=//input[@name='email']    ${email}

Input Phone
    [Arguments]    ${phoneNumber}
    Input Text    xpath=//input[@name='phoneNumber']    ${phoneNumber}

Input Password
    [Arguments]    ${password}
    [Documentation]    รหัสผ่าน 8 ตัวขึ้นไป โดยประกอบด้วยอักษร a-z, A-Z และ 0-9
    Should Match Regexp    ${password}    (?=.*[a-z])(?=.*[A-Z])(?=.*\d)[A-Za-z\d]{8,}
    Input Text    xpath=//input[@placeholder='รหัสผ่าน']    ${password}

Input Confirm Password
    [Arguments]    ${confirmPassword}
    Input Text    xpath=//input[@placeholder='ยืนยันรหัสผ่าน']    ${confirmPassword}

Checkbox Agree
    [Documentation]    กดติ๊ก checkbox ยอมรับเงื่อนไขการสมัครสมาชิก
    Wait Until Element Is Visible    xpath=//input[@name='consent']    5s
    Click Element    xpath=//input[@name='consent']

Submit Signup Form
    [Documentation]    กดปุ่มเพื่อส่งแบบฟอร์มสมัครสมาชิก
    Wait Until Element Is Visible    xpath=//button[text()='สมัครสมาชิก']    5s
    Click Button    xpath=//button[text()='สมัครสมาชิก']

Verify OTP Page
    [Documentation]    ตรวจสอบหน้าที่แสดงข้อความส่ง OTP ไปยังเบอร์โทรศัพท์
    Wait Until Page Contains    ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์    10s
    Page Should Contain    ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์
