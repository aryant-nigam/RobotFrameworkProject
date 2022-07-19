*** Settings ***
Library     School.py

*** Keywords ***
build school
    [Arguments]     ${schoolName}
    ${school}=   create school  ${schoolName}
    [Return]    ${school}

