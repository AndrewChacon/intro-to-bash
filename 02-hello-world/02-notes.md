What is Bash?
Bash is a shell, opening the terminal and inputing commands is interacting with the shell.

A shell allows us to work with a system via commands.
Automation can help us save time running these commands.

echo $SHELL can show us which shell the terminal is using, it will most likely be Bash most of the times.

which bash
/bin/bash

nano myscript.sh

sudo chmod +x myscript.sh
./myscript.sh

scripts are great if they save you time not if they create more work for you

these scripts work from top to bottom when executing the lines of each script file

now the script runs 'ls' then 'pwd'
01-notes.md myscript.sh
/Users/drew/dev/bash/intro-to-bash/01-introduction

a proper script has a heading that helps identify if it is a bash script.
#!/bin/bash
this is the very first line of any script that tells the script which interpreter its supposed to use.

converted our script into printing hello world and informs us of our current working directory.

bash-3.2$ ./myscript.sh
Hello World!
My current working directory is:
/Users/drew/dev/bash/intro-to-bash/02-hello-world
