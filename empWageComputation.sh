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
monthlyWage=0
empRatePerHr=20
numWorkingDays=20

for (( day=1; day<=$numWorkingDays; day++ ))
do

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
monthlyWage=$(($monthlyWage+$dailyWage))
done
