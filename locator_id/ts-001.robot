*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}        https://www.itd.kmutnb.ac.th/
${brower}        chrome

*** Keywords ***
Open he Best Webbrower
    [Arguments]        ${url}        ${brower}
    Open Browser       ${url}        ${brower}

*** Test Cases ***
TC-001: Testing open the best website
    Open he Best Webbrower        ${url}        ${brower}
    Sleep                         1