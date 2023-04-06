*** Settings ***
# Library    ../Guru99 Project/Library_Guru99.robot
Library    SeleniumLibrary
Library    Screenshot

*** Variables ***
${URL1}    https://www.guru99.com/
${URL2}    https://demo.guru99.com/insurance/v1/index.php
${BROWSER_NAME1}    chrome
${BROWSER_NAME2}    firefox
# ${Mobile_Test_xpath}    xpath://*[@id="menu-item-4616"]/a

*** Keyword ***
Open Guru99 on Chrome
    Open Browser    ${URL1}    ${BROWSER_NAME1}
Open Guru99 on FF
    Open Browser    ${URL2}    ${BROWSER_NAME2}

*** Test Cases ***
"Testing" dropdown should have a "Mobile Testing" item
    Set Local Variable    ${Click_Testing_Link}    xpath://*[@id="menu-item-3173"]/a
    Set Local Variable    ${Click_Mobile_Test_Link}    xpath://*[@id="menu-item-4616"]/a
    Open Guru99 on Chrome 
    Click Link    ${Click_Testing_Link}  
    Wait Until Element Is Visible    ${Click_Mobile_Test_Link}
    Page Should Contain    Mobile Testing
    # Click Link    ${Click_Mobile_Test_Link}
    # Sleep    2ms
    Capture Page Screenshot
Login the guru99
    Set Local Variable    ${Button1}    xpath://*[@id="login-form"]/div[3]/input
    Set Local Variable    ${Link1}    id:ui-id-2
    Set Local Variable    ${Text1}    - 16%
    Open Guru99 on FF
    Maximize Browser Window
    # Scroll Element Into View    locator
    Click Button    ${Button1}
    Click Link    ${Link1}
    Page Should Contain    ${Text1} 
    Capture Page Screenshot
    Click Button    xpath://*[@id="quotation_windscreenrepair_t"]
    Input Text    id:quotation_incidents    Niem Nguyen
    Input Text    id:quotation_vehicle_attributes_registration    Sunday
    Input Text    id:quotation_vehicle_attributes_mileage    Feb
    Click Element    id:quotation_vehicle_attributes_parkinglocation
    Select From List By Value    xpath://*[@id="quotation_vehicle_attributes_parkinglocation"]    Unlocked garage   
    Click Element    id:quotation_vehicle_attributes_policystart_1i
    Select From List By Value   xpath://*[@id="quotation_vehicle_attributes_policystart_1i"]    2025    
    Click Button    xpath://*[@id="new_quotation"]/div[8]/input[3]
    # Close All Browsers
How to use the checkbox and ratio Button
    Open Browser    https://demo.guru99.com/test/radio.html    chrome
    Click Element    xpath://*[@id="vfb-7-1"]
    Click Element    xpath://*[@id="vfb-7-2"]
    Click Element    xpath://*[@id="vfb-7-3"]
    Click Element    id:vfb-6-1
    Capture Element Screenshot    id:vfb-6-2
    Page Should Not Contain    Niem Nguyen
How to click on the logo
    Open Browser    https://demo.guru99.com/test/radio.html    chrome
    Click Image    xpath://*[@id="includedContent"]/div/div[1]/div[1]/div[1]/a/img
How to upload file 
    Open Browser    https://demo.guru99.com/test/upload/    chrome
    Choose File    xpath://*[@id="uploadfile_0"]    /Users/mac/Downloads/C175D4F2-24AB-46D9-9D30-1B09054123E1.jpg
    Click Element    id:terms
    Click Button    id:submitbutton
    Wait Until Page Contains    has been successfully uploaded
    Sleep    1s
    Capture Page Screenshot
