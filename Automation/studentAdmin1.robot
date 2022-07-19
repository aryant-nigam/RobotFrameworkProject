*** Settings ***
Library     Student.py
Library     School.py
Library     Teacher.py

Test Setup  Start Testing
Test Teardown  End Testing
Library     School.py
Library     Student.py
Library     Teacher.py

Test Setup  Start Testing
Test Teardown  End Testing



*** Test Cases ***
TC1. Test case to associate different python file and automating their interaction [School,Student,Teacher]
    [Documentation]     with the help of this test case we would check if we can create a school succesfully
    ${school}=  create school  Children's Academy
    log to console  ${school.schoolName}

    ${student1}=     create student  1   Aryant Nigam    12
    ${student2}=     create student  2   Ankit Kumar    12
    log student to console  ${student1}
    log student to console  ${student2}

    admit student    ${school}  ${student1}
    admit student    ${school}  ${student2}

#    ${subjectListA}=     create list  Biology   Chemistry
#    ${subjectListB}=     create list  Maths   Physics
#    ${teacher1}=    create teacher  T1  Preeti Yadav    ${subjectListA}
#    ${teacher2}=    create teacher  T2  Neelima Mukerjee    ${subjectListB}
#    log teacher to console  ${teacher1}
#    log teacher to console  ${teacher2}
#    appoint Teacher  ${school}  ${teacher1}
#    appoint Teacher  ${school}  ${teacher2}
#
#    ${studentList}=     get student list  ${school}
#    ${numberOfStudent}=     get length  ${studentList}
#    log to console  number of students are :\t${numberOfStudent}
#
#    terminate student  ${school}    ${student1}
#
#    ${studentList}=     get student list  ${school}
#    ${numberOfStudent}=     get length  ${studentList}
#    log to console  number of students are :\t${numberOfStudent}
#
#    ${teachersList}=    get teachers list  ${school}
#    ${numberOfTeachers}=    get length  ${teachersList}
#    log to console  number of teachers are :\t${numberOfTeachers}
#
#    terminate teacher  ${school}    ${teacher1}
#
#    ${teachersList}=    get teachers list  ${school}
#    ${numberOfTeachers}=    get length  ${teachersList}
#    log to console  number of teachers are :\t${numberOfTeachers}


*** Keywords ***
Start Testing
    log to console  Testing begins
End Testing
    log to console  Testing ends


