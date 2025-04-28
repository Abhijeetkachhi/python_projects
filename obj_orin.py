#this is object orineted programing in python
# iam live my dream life now

# This is the inheritence in classes

class wizard:
    def __init__(self, name):
        if not name:
            raise ValueError("missing name")
        self.name= name
    

class student(wizard):
    def __int__(self, house):
         super().__init__(name)
         self.house= house


class professor(wizard):
    def __init__(self, subject):
        super().__init__(name)
        self.subject= subject
        
wizard= wizard("abhi")
student=("Abhijeet", "kaneradev")
professor=("Vaibhav","machine learning")