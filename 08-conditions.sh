#!/bin/bash

USERID=$(id -u)

if [ $USERID -eq 0 ]
then
    echo "run below script with root previlizes"
else
    echo "run script with root previlizes"
    exit 1
fi

dnf list installed tree

if [ $? -eq 0 ]
then
    echo "package is allready installed"
else
    echo "installing package tree .."
    dnf install tree -y
    if [ $? -eq 0 ]
    then
        echo "tree package is successfully installed"
    else
        echo "package failed please check"
        exit 1
    fi
fi