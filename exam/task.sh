#!/bin/bash

liczba=""
if (( $#==2 )); then
	echo "prosze podac liczbe katalogów"
	read
else
	liczba=$3
fi

if (($# != 3)); then
	echo "zła liczba argumentów"
	exit 1
fi

if [[ ! -e $1]]; then
	echo "prosze podac plik ktory istnieje"
	exit 2
fi

if (( $3 > 20)); then
	echo "prosze podac n mniejsze od 20"
	exit 3
fi

for i in $liczba; do
	if [[ ! -d $2]]; then
		zmienna=$(nowykatalog_$i)
		mkdir -p $2/$zmienna
		cp $1 $2/$zmienna 
	else
		echo "nowykatalog_$i juz istnieje"
done

exit 0
