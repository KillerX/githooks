#! /bin/bash

git diff --cached --name-status | awk '{ if ($1 != "D") print $2}' | grep -e \.php$ | xargs -n1 php -l
exit $?
