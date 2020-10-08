#!/bin/bash -x

echo "Welcome to Employee Wage Computation"

Attendance=$((RANDOM%2))

if [ $Attendance -eq 1 ]
then
    echo "Employee is Present"
else
    echo "Employee is Absent"
fi

isFullTime=1
empRatePerHr=20

empCheck=$((RANDOM%2))

if [ $isFullTime -eq $empCheck ]
then
    empHrs=8;
else
    empHrs=0;
fi

dailyWage=$(($empHrs*$empRatePerHr))
