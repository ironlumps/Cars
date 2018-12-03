#! /bin/bash
# Cars.sh
# Ryan Kassab


CHOICE=""
let i=0
while [ $i=0 ]
do
	echo "Menu: "
	echo "1. Enter Cars"
	echo "2. List Cars"
	echo "3. Quit"
	read CHOICE
	case "$CHOICE" in 
		"1" )
			year=""
			make=""
			model=""
			echo "Enter Year: "
			read year
#			echo "$year" >> My_old_cars.txt
			echo "Enter Make: "
			read make
#			echo "$make:" >> My_old_cars.txt
			echo "Enter Model: "
			read model
			echo "$year:$make:$model" >> My_old_cars.txt
			;;
		"2")
			sort My_old_cars.txt
#			type My_old_cars.txt
			;;
		"3")
			echo "Goodbye"
			break
			;;
	esac
	echo ""
done


