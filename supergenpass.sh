#!/bin/bash

read -srp 'Password: ' master
domain=$(echo $1 | tr A-Z a-z)
length=${2:-10}

hash=$master:$domain

i=0
while true
do
	hash=$(echo -n "$hash" | openssl md5 -binary | base64 | tr +/= 98A)
	i=$(($i + 1))
	if [ $i -lt 10 ]
	then
		continue
	fi
	valid=$(echo "${hash:0:$length}" | egrep '^[a-z]' | egrep '.[A-Z]' | egrep '.[0-9]' )
	if [ "$valid" != "" ]
	then
		break
	fi
done
echo ${hash:0:$length}
