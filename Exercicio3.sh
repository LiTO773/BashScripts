#!/bin/bash
if [ -f "$1" ]
then
  cat $1
else
  echo "Erro: ficheiro não encontrado"
fi
exit