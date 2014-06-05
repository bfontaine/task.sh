#! /bin/sh
#
# Task.sh
# -------
#

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
