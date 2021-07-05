#!/bin/bash

# Script for changing owner of files / directories

# ======
# Color Constants using Escape symbols
BIRed='\033[1;91m'
LGREEN='\033[1;32m'
NC='\033[0m' # No Color

# ==============
# Helper functions
function printError() {
    printf "[${BIRed}ERROR${NC}] $1\n"
    exit -1
}

function userExists() {
    id "$1" &>/dev/null
}

# only ROOT can run the script
if [ $UID -ne 0 ]; then
    printError "Only ROOT can run this scenario"
fi

# check number of parameters
if [ $# -ne 2 ]; then
    printError "Script must be run with two command line arguments $0 <user> <dir>"
fi

# check user
if ! userExists "$1"; then
    printError "The user $1 is not present in the system"
fi

# check directory
if [ ! -d "$2" ]; then
    printError "The directory $2 is not presnet in your filesystem"
fi

# Everything is Ok we can apply the chown command
res=$(chown -R $1:$1 $2)
printf "[${LGREEN}SUCCESS${NC}] The owner in $2 has been changed to $1\n"
# YA mogu redaktirovat' chuzhoy repozitoriy
38 / 5000
Результаты перевода
# I can edit someone else's repository 
