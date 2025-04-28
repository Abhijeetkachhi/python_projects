import re
# This is the simple email collection with right pattern
email= input("what is your eamil").strip()

if re.search(r"^\w+@(\w\.)?\w+\.com$", email, re.IGNORECASE):
    print("valid")
else:
    print("invalid")


url= input("ENTER URL: ").strip()
#this is the url formating how to format url in your code.
if matches := re.search(r"https?://(?:www\.)?instgram\.com/(.+)$", url, re.IGNORECASE):
    print(f"username:", matches.group(1))
    


#This is the new program is new I am here to live my dream life here. i am greatfull for this beautifull day in my life.

    