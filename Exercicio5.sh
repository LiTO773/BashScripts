#!/bin/bash
echo "O diretório atual ocupa: $(du -ksh . | cut -f1) no disco"

for ficheiro in $(find . -type f -size +1M)
do
  echo "$ficheiro"
done
echo "Existem $(find . -type f -size +1MB | wc -w | tr -d " ") ficheiros > 1MB"
exit