#!/bin/bash

mkdir BTS
echo Ordner BTS erstellt
cd BTS

i=1
while [ $i -le 4 ]
do
  echo Ordner LB$i erstellt
  mkdir LB$i
  let i=$i+1
done
