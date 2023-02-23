*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}        https://account.kmutnb.ac.th/web/user/login
${brower}        chrome

*** Keywords ***
Open he Best Webbrower
    [Arguments]        ${url}        ${brower}
    Open Browser       ${url}        ${brower}

*** Test Cases ***
TC-001: Testing open the best website
    Open he Best Webbrower        ${url}                    ${brower}
    Input Text                    id=loginform-username     s6307012660127           
    Input Password                id=loginform-password     1MoolyFTW         
    Click Button                  xpath=//button[@type='submit']                             
    Sleep                         2