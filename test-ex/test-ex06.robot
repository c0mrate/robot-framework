*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}           file:///C:/Users/5A09-02/Desktop/ep01/ex06.html
${brower}        chrome

*** Keywords ***
Open he Best Webbrower
    [Arguments]        ${url}        ${brower}
    Open Browser       ${url}        ${brower}

*** Test Cases ***
TC-001: Testing open the best website
    Open he Best Webbrower        ${url}                 ${brower}
    Input Text                    xpath=//div[@k='abc' and @p='xyz']/input     test_user           
    # Input Password                xpath=//div[@k='abc']/input                  test_pass 
    # Input Text                    xpath=//div[@p='xyz']/input                  Eed                                   
    Sleep                         2