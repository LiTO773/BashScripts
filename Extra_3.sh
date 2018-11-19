#!/bin/bash
for foo in $@
do
  # DIRETORIO
  if [ -d $foo ]
  then
    echo "$foo é um diretório. Quer lista-lo? (s/n)"
    read optn
    if [ "$(echo $optn | tr S s)" == "s" ]
    then
      ls -la $foo
    fi
  fi
  # FICHEIRO
  if [ -f $foo ]
  then
    echo "$foo é um ficheiro. Quer ver os conteúdos? (s/n)"
    read optn
    if [ "$(echo $optn | tr S s)" == "s" ]
    then
      cat $foo
    fi
  fi
done