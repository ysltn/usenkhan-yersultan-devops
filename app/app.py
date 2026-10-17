import os

print("================================")
print("DevOps Student Application")
print("================================")
print(f"Name: {os.getenv('STUDENT_NAME', 'Yersultan')}")
print(f"Surname: {os.getenv('STUDENT_SURNAME', 'Usenkhan')}")
print(f"Group: {os.getenv('STUDENT_GROUP', 'IT2-2310')}")
print(f"Student ID: {os.getenv('STUDENT_ID', '38064')}")
print()
print("Application is running successfully!")
