#!/bin/bash

endBook=false
r=1

function page()
{
cat pages/page-$r.txt | grep '\[[$r]]+\]' $r &>/dev/null
RETURN=$?
if [ $?=0 ]
then
	cat pages/page-$r.txt
	read r
	clear
fi
}

while [ $endBook = false ]
do
		page
done
