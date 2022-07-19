from robot.api.deco import keyword
class School:
    def __init__(self):
        self.schoolName = None
        self.studentList = []
        self.teacherList = []

    @keyword("create school")
    def create_school(self,schoolName,studentList = [],teacherList=[]):
        self.schoolName = schoolName
        self.studentList = studentList
        self.teacherList = teacherList
        return self

    @keyword("admit student")
    def admit_student(self,school,newStudent):
        school.studentList.append(newStudent)

    @keyword("terminate student")
    def terminate_student_at_index(self,school,terminatingstudent):
        school.studentList = [student for student in school.studentList if student.rollNo != terminatingstudent.rollNo]

    @keyword("get student list")
    def get_student_list(self,schoolObj):
        return schoolObj.studentList

    @keyword("appoint Teacher")
    def appoint_teacher(self,school,newTeacher):
        school.teacherList.append(newTeacher)

    def terminate_teacher(self,school,terminiatingTeacher):
        school.teacherList = [teacher for teacher in school.teacherList if teacher.id !=terminiatingTeacher.id]

    def get_teachers_list(self,school):
        return school.teacherList
