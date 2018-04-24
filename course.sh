#!/bin/bash

#Comment

echo "hello World"

#------------------
./hello_world.sh
#------------------

chmod 755 hello_world #make an executable

#7 --> read, write, execute
#5 --> read, execute
#6 --> read, write
#4 --> read only
#3 --> write, execute
#2 --> write only
#1 --> execute only
#0 --> Can't do anything to the file

#Variable creation -------------------------
myName = "Ace"
declare -r NUM1=5 #constant
num2=4
num3=$((NUM1+num2))
num4=$((NUM1-num2))
num5=$((NUM1*num2))
num6=$((NUM1/num2))

echo "5 + 4 = $num3"
echo "5 - 4 = $num4"
echo "5 * 4 = $num5"
echo "5 / 4 = $num6"
echo((5**2)) #exponents
echo((5%4)) #modulo

i+=2
i-=2
i*=2
i/=2

#creating a random variable
rand=5
let rand+=4
echo "$rand"

#using python for floating points
num7=1.2
num8=3.4
num9=$(python -c "print $num7+$num8")
echo $num9

#print to screen
cat<< END #choose keyword for ending printing section
this text ends here
END

#functions on bash script----------------------
getDate(){
	date
	return
}
#calling function
getDate

#global variable
name="Arturo"

#local variable
demLocal(){
	local name="Art"
	return
}

demLocal
echo $name

getSum(){
	 local num3=$1
	 local num4=$2
	 local sum=$((num3+num4))
	 echo $sum
}

num1=5
num2=6
sum=$(getSum num1 num2)
echo $sum

#Conditionals on bash script------------------
read -p "How old are you" age

#greater than or equal to 16
if [$age -ge 16]
then
	echo "you can drive"
elif [$age -eq 15]
	echo "You can drive next year"
else
	echo "You can´t drive"
fi

#alternative
if ((num==10)); then
	echo "Your number equals 10"
fi

if ((num > 10)); then
	echo "It is greater then 10"
else
	echo "It is less then 10"
fi

if (( ((num % 2)) == 0 )); then
	echo "It is even"
fi

if (( ((num > 0)) && ((num<11)) )); then
	echo "Num is between 1 and 10"
fi

#creating a file
#create file and open it
touch sample_file && vim sample_file

#if file does't exist make it
[ -d sample_dir ] || mkdir samp_dir

#Strings on bash scripting------------------------
str1=""
str2="Sad"
str3="Happy"

if ["$str1"]; then
	echo "$str1 is not null"
fi