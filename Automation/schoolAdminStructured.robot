*** Settings ***
Library     Student.py
Library     School.py
Library     Teacher.py
Resource    ../Resources/resourceForSAS.robot

Test Setup  Start Testing
Test Teardown  End Testing

*** Variables ***
${school}
${student1}
${student2}
${teacher1}
${teacher2}

*** Test Cases ***
TC1. Creating a school
    [Documentation]     with the help of this test case we would check if we can create a school succesfully
    [Tags]  CREATION
    ${school} =     build school  Children's Academy
    Set Global Variable      ${school}
    #log to console  ${school.schoolName}

TC2.Creating and adding students to the school
    [Documentation]     with the help of this test case we would check if we can create and add students to the school succesfully
    [Tags]  CREATION

    log to console  \n school :\t ${school.studentList} ${school.teacherList} ${school.schoolName}
    ${student1}=     create student  1   Aryant Nigam    12
    ${student2}=     create student  2   Ankit Kumar    12
    set global variable     ${student1}
    set global variable     ${student2}

    log student to console  ${student1}
    log student to console  ${student2}

    admit student    ${school}  ${student1}
    admit student    ${school}  ${student2}

TC3.Creating and adding teachers to school
    [Documentation]     with the of this test case we would check if we can create and add teachers to the school succesfully
    [Tags]  CREATION
    ${subjectListA}=     create list  Biology   Chemistry
    ${subjectListB}=     create list  Maths   Physics

    ${teacher1}=    create teacher  T1  Preeti Yadav    ${subjectListA}
    set global variable     ${teacher1}
    ${teacher2}=    create teacher  T2  Neelima Mukerjee    ${subjectListB}
    set global variable     ${teacher2}

    log teacher to console  ${teacher1}
    log teacher to console  ${teacher2}

    appoint Teacher  ${school}  ${teacher1}
    appoint Teacher  ${school}  ${teacher2}

TC4.Removing a student from the school
    [Documentation]     with the help of this test case we will try to check student terminating functionality
    [Tags]  DELETION
    ${studentList}=     get student list  ${school}
    ${numberOfStudent}=     get length  ${studentList}
    log to console  number of students are :\t${numberOfStudent}


    terminate student  ${school}    ${student1}

    ${studentList}=     get student list  ${school}
    ${numberOfStudent}=     get length  ${studentList}
    log to console  number of students after one termination are :\t${numberOfStudent}

TC5.Removing a teacher from the school
    [Documentation]     with the help of this test case we will try to check teacher terminating functionality
    [Tags]  DELETION
    ${teachersList}=    get teachers list  ${school}
    ${numberOfTeachers}=    get length  ${teachersList}
    log to console  number of teachers are :\t${numberOfTeachers}

    terminate teacher  ${school}    ${teacher1}

    ${teachersList}=    get teachers list  ${school}
    ${numberOfTeachers}=    get length  ${teachersList}
    log to console  number of teachers after one termination are :\t${numberOfTeachers}

*** Keywords ***
Start Testing
    log to console  Testing begins
    ${school}=  create school  Children's Academy
    log to console  ${school.schoolName}
End Testing
    log to console  Testing ends


