#! /bin/sh
#
# Task.sh
# -------
#
# Author: Baptiste Fontaine
# Version: 0.0.1
# License: MIT
# URL: https://github.com/bfontaine/task.sh


task() {
    local cmd="$*"
    local log=/tmp/tasklog
    local s=F

    \echo -ne "[ ] $cmd"
    echo -e "\ncommand: $cmd" >>$log
    $cmd >/dev/null 2>>$log
    if [ "$?" -eq "0" ]; then
        s=x
    fi
    \echo -e "\r[$s"
}
