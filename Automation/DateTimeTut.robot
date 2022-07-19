*** Settings ***
Documentation   This file teacher how to use the DateTime package of the Robotframework
Library     DateTime
*** Variables ***
${current}
*** Test Cases ***
1. How to get current time and date
    ${current}   Get Current Date   result_format=%d/%m/%Y %H:%M:%S
    Log To Console  Current time and date \n ${current}
2.How to get next date from current date
    ${nextDate}     Get Current date    increment=1 day   result_format=%d/%m/%Y %H:%M:%S
    Log To Console  Next date from current day and time is ${nextDate}
3.How to get next time from current time
    [Documentation]     Same on 2. but this example is focusing on time.
    ${currentHour}     Get Current Date    result_format=%H:%M:%S
    ${nextHour}    Get Current Date     increment=1 hour    result_format=%H:%M:%S
    log to console  current hour is ${currentHour}
    log to console  Next hour is ${nextHour}
4.How target month as local'es abbrevieated month
    [Documentation]  Lets try to coevrt the value of month to the string
    ${abb_month}    Get Current Date    result_format=%b
    log to console  Abbreviated month ${abb_month}
5. how to get month as local'es full name
    [Documentation]  This is to display the full name of month
    ${full_month}   Get Current Date    result_format=%B
    log to console      ${full_month}
6. how to get month as ZERO-Padded decimal number
    ${padded}   Get Current Date    result_format=%m
    log to console  With zero padded decimal ${padded}
