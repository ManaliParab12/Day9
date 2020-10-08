#!/bin/bash -x

echo "Welcome to Employee Wage Computation"

Attendance=$((RANDOM%2))

if [ $Attendance -eq 1 ]
then
    echo "Employee is Present"
else
    echo "Employee is Absent"
fi

isPartTime=1
isFullTime=2
empRatePerHr=20

empCheck=$((RANDOM%3))

case $empCheck in
       $isFullTime)
              empHrs=8;
              ;;
       $isPartTime)
              empHrs=4;
              ;;
       *)
              empHrs=0;
              ;;
esac

dailyWage=$(($empHrs*$empRatePerHr))

