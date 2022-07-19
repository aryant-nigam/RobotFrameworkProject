*** Settings ***
Library     Collections

*** Test Cases ***
#Test cases to understand the lists
#    ${list}=   create list  a  b   c
#    log to console      list is ${list}\n list's first element is ${list}[0]
#    append to list      ${list}     3
#    log to console      list after adding 3 is ${list}
#    append to list      ${list}     4   5
#    log to console      list after adding 4,5 is ${list}
#    remove from list    ${list}    0
#    log to console      list is ${list}
#    ${numberOfElements}     count values in list  ${list}   2
#    log to console      number of times 3 occurs in the list ${numberOfElements}
##    ${index}    Get Index From List    ${list}  2
##    log to console      index of 4 is   ${index}
Test cases to understand dictionary
    ${dict}     create dictionary   1=a     2=b    3=c
    log to console  dictionary is ${dict}
    log to console   value of key 1 is ${dict}[1]
    ${itemExists?}   dictionary should contain item  ${dict}  1  a
    log to console      ${itemExists?}
    ${keyExists?}   dictionary should contain key   ${dict}     1
    log to console      ${keyExists?}
    ${dictKeys}     get dictionary keys  ${dict}
    FOR  ${key}   IN    ${dictKeys}
        log to console  key: ${key}
    END