*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}           file:///C:/Users/5A09-02/Desktop/ep01/ex01.html
${brower}        chrome

*** Keywords ***
Open he Best Webbrower
    [Arguments]        ${url}        ${brower}
    Open Browser       ${url}        ${brower}

*** Test Cases ***
TC-001: Testing open the best website
    Open he Best Webbrower        ${url}            ${brower}
    Input Text                    xpath=//input[@v='user']            test           
    Input Password                xpath=//input[@v='password']        test                                    
    Sleep                         2