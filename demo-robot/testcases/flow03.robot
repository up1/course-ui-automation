*** Settings ***
Resource        ../pages/constant.robot
Resource        ../pages/signUp.robot
Resource        ../pages/signUpResult.robot
Suite Setup     signUp.เข้ามายังหน้า signup
Suite Teardown  Close Browser

*** Test Cases ***   
Case success
	[Template]  Flow sign up success
	A   B
	X   Y
	1   1
    2   2

*** Keywords ***
Flow sign up success
	[Arguments]  ${fname}   ${lname}
	นาย '${fname}' '${lname}' เข้ามาทำการสมัครใหม่
	# signUpResult.ตรวจสอบผลสำเร็จ
	signUp.เปิดหน้า signup

นาย '${fname}' '${lname}' เข้ามาทำการสมัครใหม่
	signUp.ตรวจสอบหน้าการ signup
	signUp.กรอกชื่อ นามสกุล  ${fname}  ${lname}
	# signUp.กรอกที่อยู่  address  zipcode
	# signUp.ทำการสมัคร
