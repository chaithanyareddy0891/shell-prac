#!/bin/bash

USERID=$(id -u)

if [ $USERID -eq 0 ]
then
    echo "run below script with root previlizes"
else
    echo "run script with root previlizes"
fi

dnf install nginx -y