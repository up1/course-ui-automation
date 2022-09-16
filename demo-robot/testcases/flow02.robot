*** Settings ***
Resource        ../pages/constant.robot
Resource        ../pages/signUp.robot
Resource        ../pages/signUpResult.robot
Suite Setup     signUp.เข้ามายังหน้า signup
Suite Teardown  Close Browser
Test Setup      signUp.เปิดหน้า signup
Test Template   Flow sign up success

*** Test Cases ***   
# 					   ชื่อ        นามสกุล
นาย A B สมัครสำเร็จ   	 A  		B
นาย X Y สมัครสำเร็จ  	 X  	    Y

*** Keywords ***
Flow sign up success
	[Arguments]  ${fname}   ${lname}
	นาย '${fname}' '${lname}' เข้ามาทำการสมัครใหม่
	# signUpResult.ตรวจสอบผลสำเร็จ

นาย '${fname}' '${lname}' เข้ามาทำการสมัครใหม่
	signUp.ตรวจสอบหน้าการ signup
	signUp.กรอกชื่อ นามสกุล  ${fname}  ${lname}
	# signUp.กรอกที่อยู่  address  zipcode
	# signUp.ทำการสมัคร
