# Done

This program appears to be a script that is intended to open and run files of different types (pdf, txt, and videos) using specific programs specified in a text file called "Formating.txt". The program first gets the username of the user running the script and displays a message if the script is opened by itself. It then retrieves the paths of the files opened and gets the file extension of the file. It also gets the parent path of the script file and reads from "Formating.txt" to get the default programs for each file type. The program then checks the default apps for the file type in Windows and updates the variables for the default programs. The script then attempts to rename the file with an "addition" specified in "Formating.txt" and opens the file with the default program for that file type. Finally, the script writes the updated default programs back to "Formating.txt".
- [How to use](#How-to-use)
- [Describe program](#Describe-program)
- [what is program suitable for](#what-is-program-suitable-for)

## How to use

download the Setup.exe file and install the program
for download : https://raw.githubusercontent.com/MoNasr6/IsDone/main/Setup.exe


## what is program suitable for

it works in pdf files, text files, video files and music files.

## Describe program
This program begins by importing several modules, including subprocess, os, sys, shlex, and winreg.

The script starts by using the os.getlogin() method to get the username of the user running the script and stores it in the variable user_name.

The script then checks if the script is being run by itself (i.e. no files are passed as arguments) by checking the length of sys.argv, which is a list containing the command-line arguments passed to the script. If the script is being run by itself, it displays a message and exits.

If files are passed as arguments, the script retrieves the path of the script file itself and the path of the file that is to be opened, and stores them in the variables my_program_path and file_path respectively.

The script then uses the split() method to get the file extension of the file and stores it in the variable new_vector.

The script then uses the os.path.dirname() and os.path.abspath() methods to get the parent path of the script file and stores it in the variable my_parent_path. It then constructs the path to the "Formating.txt" file using my_parent_path.

The script then uses a loop to read the "Formating.txt" file and get the default programs for each file type, and stores them in the variables addition, run_note, run_pdf, and run_video.

The script then uses the winreg module to get the default app for the file type in Windows and updates the variables for the default programs accordingly. If the default app is not found, it uses the default programs specified in the "Formating.txt" file.

The script then attempts to rename the file by appending the "addition" specified in "Formating.txt" to the file name. If the addition already exists in the file name, it does not rename the file.

The script then uses the subprocess.Popen() method to open the file with the default program for that file type.

Finally, the script opens the "Formating.txt" file in write mode and writes the updated default programs back to the file.

This script is intended to open and run files of different types with specific programs, and it gives the user the ability to specify the default programs for each file type in "Formating.txt" file, and update the default apps for files in windows.

