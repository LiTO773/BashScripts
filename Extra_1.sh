#!/bin/bash
if [ $1 -gt $2 ]
then
  echo "O Número $1 é o maior"
  echo "O Número $2 é o menor"
elif [ $1 -eq $2 ]
then
  echo "São iguais"
else
  echo "O Número $2 é o maior"
  echo "O Número $1 é o menor"
fi

echo "A multiplicação dos dois números é igual a $(($1 * $2))"