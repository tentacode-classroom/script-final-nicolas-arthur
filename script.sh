#!/bin/bash
clear
endBook=false
r=1

function page()
{
cat pages/page-$r.txt | grep '\[[\+]]+\]' $r &>/dev/null
RETURN=$?
if [ $?=0 ]
then
	cat pages/page-$r.txt
	read r
	clear
else
	cat pages/page-$r.txt
	$endBook=true
fi
}

while [ $endBook = false ]
do
		page
done
