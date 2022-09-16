*** Keywords ***
เข้ามายังหน้า signup
	Open Browser   ${URL}   browser=chrome
	Maximize Browser Window

ตรวจสอบหน้าการ signup
	Title Should Be   Sign up
	Wait Until Element Is Visible   id:signup

กรอกชื่อ นามสกุล
	[Arguments]  ${fname}  ${lname}
	Input Text  id:firstname   ${fname}
	Input Text  id:lastname    ${lname}

กรอกที่อยู่
	[Arguments]  ${address}  ${zipcode}

ทำการสมัคร


