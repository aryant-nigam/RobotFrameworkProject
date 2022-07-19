from robot.api.deco import keyword
from robot.libraries.BuiltIn import *

class Student:
    def __init__(self):
        self.rollNo = None
        self.name = None
        self.clas = None

    @keyword("format student")
    def format_student(self,student):
        return f"{student.rollNo} {student.name} {student.clas}"

    @keyword("log student to console")
    def log_student_to_console(self,student):
        BuiltIn.log_to_console(self,message=f"{student.rollNo} {student.name} {student.clas}")

    def create_student(self,rollNo,name,clas):
        newStudent = Student()
        newStudent.rollNo = rollNo
        newStudent.name =  name
        newStudent.clas = clas
        return newStudent


