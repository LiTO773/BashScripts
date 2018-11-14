#!/bin/bash
echo "No diretório atual há: "
echo "$(find . -maxdepth 1 -type d | wc -w | tr -d " ") subdiretórios"
echo "$(find . -maxdepth 1 -type f | wc -w | tr -d " ") ficheiros"
for ficheiro in $(ls)
do
  if [ -f "$ficheiro" ]
  then
    echo "➡️ $ficheiro têm $(wc -w < $ficheiro | tr -d " ") palavras e $(wc -l < $ficheiro | tr -d " ") linhas."
  fi
done
exit