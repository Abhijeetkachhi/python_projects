import re
# This is the simple email collection with right pattern
email= input("what is your eamil").strip()

if re.search(r"^\w+@(\w\.)?\w+\.com$", email, re.IGNORECASE):
    print("valid")
else:
    print("invalid")