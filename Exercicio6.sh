#!/bin/bash
data="$(date "+%F")"
# Cria o diretório backups
if [ -d "backups" ]
then
  mkdir backups
fi

# Cria o subdiretorio com a data
mkdir "./backups/$data"

# Move tudo do atual diretório para backup
for doc in $(ls)
do
  if [ "$doc" != "backups" ]
  then
    mv "$doc" "backups/$data/"
  fi
done