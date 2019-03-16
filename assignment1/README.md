# Duty
    Create a new chroot jail.

    Check chroot is successes or not.

    Run a bash or Python script in the chroot jail. 


## Usage

copy this repository to your machine.
-`git clone https://github.com/fatihkykc/ceng2034_os_labs.git̀

change your directory to assignment1

run chrooot.sh with your input script (in this case it is run.sh)

-`./chrooot.sh run.sh`

## What to expect

running this script will create a jail environment in your home folder named 'JAIL'
then it will run the 'run.sh' script in a jailed bash.

expected output will be:
```
Copying run.sh
Copying shared files/libs to /home/unrool/JAIL...
running test script...
gotcha! you are in jail.
bash-4.3# 

```





## Acknowledgments

* This script is written in bash 4.3.48
* Needs sudo privileges.
* Tested in ubuntu 16.0.4
