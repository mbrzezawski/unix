#!/bin/bash
if [ $# -lt 1 ]; then
	echo -n "Podaj UID: "
	read UIDE
else
	UIDE=$1
fi
OPIS=`cat /etc/passwd | cut -f3,5 -d: | grep "^$UIDE:" | cut -f2 -d:`
echo "Uzytkownik $UIDE to $OPIS"

