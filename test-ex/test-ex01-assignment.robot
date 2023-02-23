*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}           file:///C:/Users/5A09-02/Desktop/ep01/ep01_small_excercise.html
${brower}        chrome

*** Keywords ***
Open he Best Webbrower
    [Arguments]        ${url}        ${brower}
    Open Browser       ${url}        ${brower}

*** Test Cases ***
TC-001: Testing open the best website
    Open he Best Webbrower        ${url}                 ${brower}
    Input Text                    id=username-box                          user           
    Input Password                xpath=//div[@v='password']/input         passwd
    Input Text                    xpath=//input[@doppio='nickname']        Eed       
    # Select From List By Index        id=company        3 
    # Select From List By Label        id=company        pi-off-doo
    Select From List By Value     id=company                               doppio
    Select Checkbox               id=op1
    Click Button                  xpath=//button[@id]
            
    Sleep                         2