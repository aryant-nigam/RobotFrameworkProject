from robot.libraries.BuiltIn import *

class Teacher:
    def __init__(self):
        self.id = None
        self.name = None
        self.subjectsList = None

    def create_teacher(self,id,name,subjectsList):
        newTeacher = Teacher()
        newTeacher.id = id
        newTeacher.name = name
        newTeacher.subjectsList = subjectsList
        return newTeacher

    def add_subject_to_teacher(self,teacher,subject):
        teacher.subjectsList.append(subject)

    def get_teacher_subject_list(selfself,teacher):
        return teacher.subjectsList

    def format_teacher_data(self,teacher):
        return f"{teacher.id} {teacher.name} {teacher.subjectsList}"

    def log_teacher_to_console(self,teacher):
        BuiltIn.log_to_console(self,self.format_teacher_data(teacher))