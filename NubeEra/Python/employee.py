class Employee:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def increament_salary(self, salary):
        return salary + 1000

emp = Employee("Ashraf",35)
new_salary = emp.increament_salary(70000)
print(emp.name)
print(emp.age)
print(new_salary)