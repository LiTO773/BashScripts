#!/bin/bash
# entries="$(cat /etc/passwd | cut -f5 -d ":" | grep $@)"

for entry in $@
do
 echo "Utilizadores $entry:"
  cat ./etc/passwd | grep " $entry:" | cut -f1 -d":"
done
exit