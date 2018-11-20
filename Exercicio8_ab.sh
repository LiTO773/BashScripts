#!/bin/bash
entries="$(cat /etc/passwd | cut -f1 -d ":" |  grep "^$1$" | wc -l | tr -d " ")"

if [ "$entries" == "1" ]
then
  cat /etc/passwd | grep "^$1" | cut -f5,6,7 -d ":"
else
  echo "O utilizador não existe!"
fi