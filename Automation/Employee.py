from robot.api.deco import keyword

class Employee:
    def __init__(self,name,surname,id):
        self.name = name
        self.surname = surname
        self.id = id
    def format(self):
        return f"{self.id} {self.name} {self.surname}"

    @keyword("create person")
    def createPerson(self, name, surname, id):
        Employee.__init__(self,name, surname, id )
        return self.format()

class Human:
    def __init__(self,name):
        self.name = name

    @keyword("create human")
    def createHuman(self,name):
        Employee.__init__(self, name)