import subprocess
import os
import sys

# to get username of kernal
user_name = os.getlogin()

# if programe file opened by it self
if len(sys.argv) == 1:
    print("            Hi " + user_name + ", go and use it in files now o_0 \n")
    print("                          good luck :) \n")
    input(" press Enter to exit......")
    exit()

# The deafualt prgram path (this is for stored tmp paths)
path_tmp = "C://Windows//notepad"

# variable for check in file
get_add = 0
get_path = 0

# paths of files 
my_program_path = sys.argv[0]
file_path = sys.argv[1]

# The deafualt programme path ( result path )
run_program_path = "C://Windows//notepad"

# The addition part
addition = "...is.done..."

# To get extention of the file
new_vector = file_path.split('.')

# To get parent path
my_parent_path = os.path.dirname(os.path.abspath(__file__))
formating_path = my_parent_path + '\\' + "Formating.txt"

# To get path of file
real_path = file_path
while real_path[-1] != '.':
    real_path = real_path[:-1]

# For checking Formation.txt file 
for i in open(formating_path, "r"):
    if i[-1] == '\n':
        i = i[:-1]
    spl = i.split(' ')
    if get_add == 1:
        get_add = 0
        addition = i
    elif get_path == 1:
        get_path = 0
        path_tmp = i
    elif spl[0] == "new":
        get_path = 1
    elif spl[0] == "addition":
        get_add = 1
    elif i == new_vector[-1]:
        run_program_path = path_tmp
        
try :
    
    # new name of the file 
    new_path = real_path + addition + "." + new_vector[-1]

    if addition in file_path:
        # if the addition already exist in file name
        new_path = file_path
    else:
        # rename the file
        os.rename(file_path, new_path)

    # To run file
    p = subprocess.Popen([run_program_path, new_path])
    
except:
    
    print("            Hi " + user_name + ", o_0 \n")
    print("    There is an erorr of Formating.txt file please check the format of the file\n")
    print("                       good luck :)   ")
    input(" press Enter to exit......")
    exit()

