*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}=    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}=    edge
${username}=    Admin
${password}=    admin123
*** Test Cases ***
tc01 login Test
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Sleep    3
    Input Text    name:username    ${username}
    Input Password    name:password    ${password}
    Click Button     class:oxd-button
    Sleep    3
    Element Text Should Be    Xpath://*[@id="app"]/div[1]/div[1]/header/div[1]/div[1]/span/h6    Dashboard
    Click Element    Xpath://p[@class="oxd-userdropdown-name"]
    Sleep    3
    Click Element    Link:Logout
    Sleep    3
    Element Should Be Visible    class:oxd-button
    Close Browser
*** Keywords ***