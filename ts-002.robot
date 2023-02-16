*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${message}        My Message

*** Keywords ***
Say Hello
    Log To Console    This is my massage

*** Test Cases ***
TS-002: Open Google website with SE + Chrome-Driver
    Open Browser        https://account.kmutnb.ac.th/web/user/login     browser=chrome
    Input Text          id=loginform-username                           s6307012660127
    Input Password      id=loginform-password                           1MoolyFTW
    Click Button        xpath=//button[@type='submit']
    Sleep               2