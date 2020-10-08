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

declare -A dailyWage

function getWorkingHours() {
         local $empcheck=$1
         case $empCheck in
                  $isFullTime)
                        workHrs=8;
                        ;;
                  $isPartTime)
                        workHrs=4;
                        ;;
                  *)
                        workHrs=0;
                        ;;
         esac
         echo $workHrs
}

function getEmpWage() {
        local empHr=$1
        echo $(($empHr*empRatePerHr))
}

while [[ $totalWorkHours -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
        ((totalWorkingDays++))
        empCheck=$((RANDOM%3))
        workHrs="$( getWorkingHours $empCheck )"
        totalWorkHours=$(($totalWorkHours+$workHrs))
        dailyWage["Day" $totalWorkingDays]="$( getEmpWage $workHrs )"
done

totalSalary=$(($totalWorkHours*$empRatePerhr))
echo ${dailywage[@]}
echo ${!dailyWage[@]}

