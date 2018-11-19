#!/bin/bash
echo "Qual é o nome do utilizador?"
read utilizador

encontrado=0 # 0 não existe, 1 existe

for user in $(who | cut -f1 -d " " | tr [A-Z] [a-z])
do
  if [ "$user" == $(echo $utilizador | tr [A-Z] [a-z]) ]
  then
    encontrado=1
  fi
done

if [ $encontrado -eq 1 ]
then
  echo "O utilizador encontra-se registado neste momento"
else
  echo "Nope"
fi