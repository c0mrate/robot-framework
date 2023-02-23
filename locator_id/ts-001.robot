*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}        http://klogic2.kmutnb.ac.th:8080/kris/index.jsp
${brower}        chrome

*** Keywords ***
Open he Best Webbrower
    [Arguments]        ${url}        ${brower}
    Open Browser       ${url}        ${brower}

*** Test Cases ***
TC-001: Testing open the best website
    Open he Best Webbrower        ${url}                            ${brower}
    Input Text                    xpath=//input[@type='text']       6307012660020           
    Input Password                xpath=//input[@type='password']   1104300418061        
    Click Button                  xpath=//input[@type='submit']                             
    Sleep                         2