*** Settings ***
Resource  ../pages/constant.robot
Resource  ../pages/signUp.robot
Resource  ../pages/signUpResult.robot

*** Test Cases ***
Flow sign up success
	นาย 'A' 'B' เข้ามาทำการสมัครใหม่
	signUpResult.ตรวจสอบผลสำเร็จ

Flow sign up success
	นาย 'X' 'Y' เข้ามาทำการสมัครใหม่
	signUpResult.ตรวจสอบผลสำเร็จ

*** Keywords ***
นาย '${fname}' '${lname}' เข้ามาทำการสมัครใหม่
	signUp.เข้ามายังหน้า signup
	signUp.ตรวจสอบหน้าการ signup
	signUp.กรอกชื่อ นามสกุล  ${fname}  ${lname}
	signUp.กรอกที่อยู่  address  zipcode
	signUp.ทำการสมัคร
