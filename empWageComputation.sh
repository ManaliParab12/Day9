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
maxHrsInMonth=100
numWorkingDays=20

totalWorkHours=0
totalWorkingDays=0

function getWorkingHours() {

         case $1 in
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
}

while [[ $totalWorkHours -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
        ((totalWorkingDays++))
        getWorkingHours $((RANDOM%3))
        totalWorkHours=$(($totalWorkHours+$empHrs))
done

