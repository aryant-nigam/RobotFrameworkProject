*** Settings ***
Library  Process
Library   xyz.py
*** Test Cases ***
these tests help to understand the process library
    #Run Process	python	-c	print('Hello, world!')  alias=myprocess
    #${result} =	get process result  myprocess
    #log to console  ${result.stdout}    myprocess
    #log to console  ${result.rc}    #what is does?
    #Terminate Process	myprocess	kill=true
    ${result}=  Start Process   python  "C:\\Users\\NigamAr\\Desktop\\python test tasks\\RobotFramework\\Automation\\test.py"  alias=Aryant
    #python  xyz.caller()    Aryant  alias=pyscript
    #${result}=      wait for process      pyscript      timeout=1min 30s	on_timeout=kill
    log to console  \noutput:\n${result.stdout}