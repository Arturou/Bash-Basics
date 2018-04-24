# Bash: Meta-Characters
    * --> zero or more matches
	? --> match on character
	[] --> match within the range
	> redirect the output of the command (creats or overwrite)
	>> appends data
	< --> input
	| --> pass output to another output
	\ defines key words as key words
# Basic commands

    echo --> output message
	cat --> display content of a file
	ls --> list of directories and files
	cd --> switch directory
	cp --> copy files 
	mv --> moving
	rm --> remove files
	pwd--> present working directory
	mkdir --> new dir
	rmdir --> remove dir
	less --> see all data
	man --> manual
	cut --> cut lines 
	paste --> merge files vertically (adds columns)
	sort --> Sort text files.  
	head --> glims of data (10)
	tail --> glims of data (10)
	who --> current user
	date --> current date
	grep --> Search file(s) for specific text.
	find --> Search a folder hierarchy for filename(s) that meet a desired criteria: Name, Size, File Type
	wc --> number of chars

# Bash: Types of Paths

 - Relative path --> with respect to the current directory
 - Absolute path --> static path (from root directory) 

# Execute Bash Scripts - chmod & chown

    cd ./<shell.sh> --> execute scripts and shells
	-->  best practice use 664
	--> 777 full access
	-->permision on files
	-->permision on directory
	-->ls -lrt -a see hidden files
	-->ls -r
	-->ls -l
	-->ls -t
	-->ls -a
	chmod user-group-others
	chown: Change owner, change the user and/or group ownership of each given File to a new Owner.  
	4 --> read
	2 --> write
	1 --> execute

# vi Text Editor

    Text editor vi <file name> -->creats content or opens file
	command mode --> view
	insert mode --> add or update --> i
	view command --> open file in read mode
	delete mode
	replace mode
	press escape to exit mode
	dd delete row --> only for command mode or read mode
	:q exit file before writting
	:wq exit and save
	q! exit without saving

# Combination of commands

$0 current executing script [name of file]
$1 first argument
$2 second argument
$# number of arguments
$? stores the last successful output = 0

 how ro run shell script:
> sh <filename.extension>

 

## QUOTES

 - '' print text as it is (static)  
 - "" insert variables (dynamic) command substitution

# if in Bash

     if <condition>;then

	 elif <condition>

	 fi

 

# For loop in Bash

    for <variable> in 1 2 3 4..n
	 do
		 echo <variable>
	 done

	for <variable> in file1
	 do
		echo <variable>
	 done

# While Loop in Bash

     while read:
	 do
	 if <condition>; then
		echo <variable>
	 fi
	 done

## Extra Stuff

 ((  )) --> execute expression

 Best practice is to always remove a file and create modified version

 rm -f force remove
 rm -r Remove directories and their contents recursively
