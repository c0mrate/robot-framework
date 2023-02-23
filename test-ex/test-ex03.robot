*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}           file:///C:/Users/5A09-02/Desktop/ep01/ex03.html
${brower}        chrome

*** Keywords ***
Open he Best Webbrower
    [Arguments]        ${url}        ${brower}
    Open Browser       ${url}        ${brower}

*** Test Cases ***
TC-001: Testing open the best website
    Open he Best Webbrower        ${url}                 ${brower}
    Input Text                    xpath=//div[@v='username']/input       test           
    Input Password                xpath=//div[@v='password']/input       test                                    
    Sleep                         2