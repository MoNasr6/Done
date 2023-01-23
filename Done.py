import subprocess
import os
import sys
import shlex
import winreg

# to get username of kernal
user_name = os.getlogin()

# if programe file opened by it self
if len(sys.argv) == 1:
    print("            Hi " + user_name + ", go and use it in files now o_0 \n")
    print("                          good luck :) \n")
    input(" press Enter to exit......")
    exit()

# paths of files opened
my_program_path = sys.argv[0]
file_path = sys.argv[1]

# To get extention of the file
new_vector = file_path.split('.')

# To get parent path
my_parent_path = os.path.dirname(os.path.abspath(__file__))
formating_path = my_parent_path + '\\' + "Formating.txt"

# To get path of file
real_path = file_path
while len(real_path) > 1 and real_path[-1] != '.':
    real_path = real_path[:-1]

# to avoid errors
addition = ""
run_pdf = ""
run_note = ""
run_video = ""
index=0

# Ckeck the defualt apps
for line in open(formating_path, "r"):
    if line[-1] == '\n':
        line = line[:-1]
    if index == 1:
        addition = line
    elif index == 3:
        run_note = line
    elif index == 5:
        run_pdf = line
    elif index == 7:
        run_video = line
    index += 1

run_program = run_video
path = "xxx"
suffix = '.' + new_vector[-1]

# get defualt app in windows
try :
    class_root = winreg.QueryValue(winreg.HKEY_CLASSES_ROOT, suffix)
    with winreg.OpenKey(winreg.HKEY_CLASSES_ROOT, r'{}\shell\open\command'.format(class_root)) as key:
        command = winreg.QueryValueEx(key, '')[0]
        path = shlex.split(command)[0]
except : 
    path = "xxx"

# get proirity for defualt for windows and update variable
if new_vector[-1] == "pdf":
    if path =="xxx" :
        run_program = run_pdf
    elif "IsDone.exe" in path :
        run_program = run_pdf
    else:
        run_pdf = path
        run_program = path
elif new_vector[-1] == "txt":
    if path =="xxx":
        run_program = run_note
    elif "IsDone.exe" in path :
        run_program = run_note
    else:
        run_note = path
        run_program = path
else:
    if path =="xxx":
        run_program = run_video
    elif "IsDone.exe" in path :
        run_program = run_video
    else:
        run_video = path
        run_program = path

# try to update name and open subprocess
try:

    # new name of the file
    new_path = real_path + addition + "." + new_vector[-1]
    
    if addition in file_path:
        # if the addition already exist in file name
        new_path = file_path
    else:
        # rename the file
        os.rename(file_path, new_path)
    # To run file
    p = subprocess.Popen([run_program, new_path])
    
    # write the updated apps defualt in Formating.txt file
    file1=open(formating_path, "w")
    file1.write("Addition part : \n"+addition+'\n')
    file1.write("for text : \n"+run_note+'\n')
    file1.write("for pdf : \n"+run_pdf+'\n')
    file1.write("for video : \n"+run_video)
    file1.close()

except:
    # get error in subprocess
    print("            Hi " + user_name + ", o_0 \n")
    print("    There is an erorr of Formating.txt file please check the format of the file\n")
    print("\n")
    input(" press Enter to exit......")
    exit()