#!/bin/bash

USERID=$(id -u)
LOGS_FILE="/var/log/shell-script"
LOG_FILE="/var/log/shell-script"/$0.log"

if[$USERID -ne 0]; then
    echo "Please run this script with root user access"|tee -a $LOG_FILE
    exit 1
fi

mkdir -p $LOGS_FOLDER

VALIDATE(){
    if [$1 -ne 0]; then
        echo "$2.. Failure" |tee -a $LOGS_FILE
        exit 1
    else
        echo "$2 .. Success"| tee -a $LOGS_FILE
    fi
}

dnf install ngnix -y &>> $LOGS_FILE
VALIDATE $? "Installing Ngnix"

dnf install mysql &>> $LOGS_FILE
VALIDATE $? "Installing mysql"

dnf install nodejs -y &>> $LOGS_FILE
VALIDATE $? "Installing nodejs"