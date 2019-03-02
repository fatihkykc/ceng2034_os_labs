import os, time

os.chdir(os.path.expanduser("~")) ##change directory to home
folder = "os_lab_0" ##define a folder variable
if os.path.exists(folder) is False:
	os.mkdir(folder) ##create a folder named "os_lab_0"
os.chdir(folder) ##change the directory to the folder

myFiles= ['1.txt','2.txt','1.py']
for file in myFiles:
	if os.path.exists(file) is False:
		os.mknod(file) ##create a .txt file
	print("{} Date modified: {}".format(file,time.ctime(os.path.getmtime(file))))  ##reorganize the time
	if file.endswith('.txt'):
		print(file)
