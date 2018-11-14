#!/bin/bash
user="$1"
dir="$2"
if [ $# -ne 2 ]
then
  echo "Qual o nome do utilizador?"
  read user
  echo "Qual o diretório?"
  read dir
fi
echo "Estes são os ficheiros de $dir do utilizador $user na data $(date):"
ls $dir
exit