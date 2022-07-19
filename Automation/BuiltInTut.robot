*** Settings ***
Library     BuiltIn
Library     Employee.py  Aryant    Nigam   1
Library     String


*** Test Cases ***
This part is learn some functions of builtin package
    log  Hello World
    ${emp}=     create person   Aryant    Nigam   1
    #${human}=   create human  Aryant
    log to console  employee is ${emp}
    ${x}    set variable  7
    log to console  ${x}
    ${catenatedString}  catenate  SEPARATOR=\n  hi  my  name    is  Aryant
    log to console      ${catenatedString}
    ${bin}  convert to binary   8
    log to console  ${bin}
    ${int}  convert to integer  A   16
    log to console  integer for (A)16 \n ${int}

FOR Loop with Start, Finish, and Step Range
    [Documentation]  The counter will jump by 2 each time ("step" value = 2)
    FOR  ${Index}  IN RANGE  1  10  2
       ${RANDOM_STRING} =  Generate Random String  ${Index}
       IF   '${Index}' == '5'    CONTINUE
       log to console  ${index}
       Log  ${RANDOM_STRING}
    END