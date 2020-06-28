#! /bin/bash

# AUTHOR:- Rajat Agarwal<agarwalrajat176@gmail.com><7355015656>

#Project Name:- Secret Aggent Application

#Rules:-

#1) The first character of the name should be 'd'.
#2) The last character of the favourite Actor should be 'r'.
#3) The Lucky number should be '7'.
#4) The number of Characters in his favourite dish should be >=6.

#) If above conditions are specified then user is valid secret Agent and share information about our next operation , otherwise just say thanku.

echo "Welcome to the Serect Aggent Application"
echo "----------------------------------------"

read -p "Enter your Name:-" name
read -p "Enter you Favourite Actor Name:-" actor
read -p "Enter your Lucky Number:-" number
read -p "Enter your Favourite Dish name:-" dish

c1=$(echo $name | cut -c 1)
len=$(echo -n $actor | wc -c)
c2=$(echo -n $actor | cut -c $len)
c3=7
c4=$(echo -n $dish | wc -c)

if [ $c1 = 'd' -a $c2 = 'r' -a $c3 -eq 7 -a $c4 -ge 6 ];then

	echo "Welcome Back Agent"
	echo "------------------"
	echo "Good to Know ,Your Are Alive"
	echo "------------------Your Next Operation is:- Become a Devops Engineer------------------------"

else

	echo "Hello $name , Just go out BHSDK"
fi




