#!/bin/bash
if [ $# -lt 1 ]; then
	echo -n "Podaj UID: "
	read UIDE
else
	UIDE=$1
fi
OPIS=`cat /etc/passwd | awk -F: '{ if ( '$UIDE'== $3 ) print $5 }'`
if [ $OPIS ]; then
        echo "Uzytkownik $UIDE to $OPIS"
else
        echo "Uzytkownik $UIDE brak opisu"
fi


