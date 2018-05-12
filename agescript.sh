#!/bin/bash

textfile=$1
alter=$2
suchterm=0
year=`date +'%Y'`

if [ -z "$textfile" ] || [ -z "$alter" ];
then
  echo Es wurden keine/nicht genug Parameter übergeben.
  echo Input Textfile eingeben
  read textfile
  echo Alter eingeben
  read alter
fi

let suchterm=year-alter
echo Alle vor $((suchterm+1)) geboren werden angezeigt

while (( $suchterm > 1900 ))
do
	grep -i $suchterm $textfile >> sort #Zwischenspeicher
	suchterm=$(( suchterm-1 ))
done

sort -k2,2 -t $',' sort

rm sort
