#!/bin/bash
find . -type f -maxdepth 1 -perm -o=w -exec chmod o-w {} \;
exit