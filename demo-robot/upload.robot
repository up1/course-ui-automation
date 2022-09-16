*** Settings ***
Library     SeleniumLibrary
# Test Teardown    Close Browser

*** Variables ***
${LOCALTION_OF_SINGLE_UPLOAD}   //div/div[2]/div/input[2]

*** Test Cases ***
Upload success
	[Tags]  feature01
	Open Browser   http://nervgh.github.io/pages/angular-file-upload/examples/simple/   browser=chrome
	Maximize Browser Window
	Wait Until Element Contains  xpath=//div/div[2]/div[2]/p  Queue length: 0
	ทำการ upload file ชื่อว่า 'data_01.txt' จะต้องมี file ใน queue เท่ากับ '1'
	XXX   1   data_01.txt
	XXX   2   data_02.txt
	XXX   3   data_03.txt

	ตรวจสอบผลการ upload file  33%
	ตรวจสอบผลการ upload file  66%
	ตรวจสอบผลการ upload file  100%

*** Keywords ***
Choose File
	[Arguments]  ${i1}   ${i2}
 
ทำการ upload file ชื่อว่า '${filename}' จะต้องมี file ใน queue เท่ากับ '${counter}'
	SeleniumLibrary.Choose File	 xpath=${LOCALTION_OF_SINGLE_UPLOAD}	${CURDIR}/data/${filename}
	Wait Until Element Contains  xpath=//div/div[2]/div[2]/p  Queue length: ${counter}

XXX
	[Arguments]  ${counter}  ${filename}
	Choose File	 xpath=${LOCALTION_OF_SINGLE_UPLOAD}	${CURDIR}/data/${filename}
	Wait Until Element Contains  xpath=//div/div[2]/div[2]/p  Queue length: ${counter}

ตรวจสอบผลการ upload file
	[Arguments]  ${percent_progress}
	Wait Until Element Is Visible  //div[2]/div/div/div/div[@style="width: ${percent_progress};"]


# //table/tbody/tr[1]/td[1]
# //table/tbody/tr[2]/td[1]
# //table/tbody/tr[3]/td[1]

Wait Until Element Is Visible  //div[2]/div/div/div/div[@style="width: 33%;"]
Wait Until Element Is Visible  //div[2]/div/div/div/div[@style="width: 66%;"]
Wait Until Element Is Visible  //div[2]/div/div/div/div[@style="width: 100%;"]
