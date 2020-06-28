#! /bin/bash

#project Name:- Book Rental Application
#-------------------------------------

#The Rajat Book Library need a way to determine the cost that a student has to pay for renting a book.

#the Cost is dependednt on the time of the book is returned.
#However there are some special rate on Staurday and Sunday.
#the fee Structure shown in the following list:-

#The cost is Rs 30 /- per Day.
#If the Book is returned After 9 PM , student will be charged an extra day fee.
#If the book is rented on Sunday, the student will get 50% off for as long as they keep the book.
#If the book is rented on Saturday, the student will get 30% off for as long as they keep the book.



echo " Welcome to the Book Rental Application"
echo " ######################################"
cost_per_day=30

read -p "Was book Retured before 9PM [yes|no]:" ontime
read -p "How Many Days Book was Rented? :-" days_rented
read -p "what day the Book Rented? :-" day_rented



if [ $ontime = "no" ];then
	days_rented=$[days_rented+1]
fi

if [ $day_rented = "Sunday" ];then
	cost=$(echo $days_rented*$cost_per_day*0.5 | bc )
elif [ $day_rented = "Saturday" ];then
	cost=$(echo $days_rented*$cost_per_day*0.7 | bc )
else
	cost=$(echo $days_rented*$cost_per_day |bc)
fi


echo "The Total Pay Amount  is : Rs $cost"
original_cost=$[days_rented*cost_per_day]
discountF=$(echo $original_cost-$cost | bc )
discountI=$(echo $discountF | cut -d "." -f1)

if [ $discountI -gt 1 ];then
	echo "hello, you got Rs $discountF , Enjoy"
fi

echo "Visit Again"










