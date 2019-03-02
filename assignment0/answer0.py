import os, time

os.chdir(os.path.expanduser("~")) 
folder = "os_lab_0"
if os.path.exists(folder) is False:
	os.mkdir(folder)
os.chdir(folder) 

myFiles= ['1.txt','2.txt','1.py']
for file in myFiles:
	if os.path.exists(file) is False:
		os.mknod(file)
	print("{} Date modified: {}".format(file,time.ctime(os.path.getmtime(file)))) 
	if file.endswith('.txt'):
		print(file)
