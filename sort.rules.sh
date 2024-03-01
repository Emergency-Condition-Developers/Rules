#!/bin/bash

echo ${PWD}

Sorter="./Sorter.exe"
KeyOrderFile="templates/rules.keys.txt"

echo "Sorter is $Sorter"

for file in rules*.ini; do
    echo "======$file======" 
    cmd="$Sorter \"$file\" \"$file\" \"$KeyOrderFile\""
    echo "($cmd)"
    eval $cmd  
done

echo "=======DONE======="