#!/bin/bash

#Part 1

amino_acids=("Methionine" "Leucine" "Cysteine" "Alanine" "Valine" "Tyrosine" "Proline")

for aa in "${amino_acids[@]}"; do
    echo "$aa : ${#aa}"
done

#Part 2

while read line
do
   chars=$(echo -n "$line" | wc -c)
   echo "$line : $chars"
done > "file.txt"

#Part 3

counter=0
quote="This script will run again"
until [[ $counter -ge 10 ]]
do
    echo $quote
    quote="$quote and again"
    ((counter++))
done
echo "Until it is done"

#Part 4
echo Dexter Watson
echo "$(whoami)"
echo "$(date)"
echo "$(pwd)"

#Part 5

addnum(){
    local num1=$1
    local num2=$2
    local sum=$((num1 + num2))
    
    echo "$num1"
    echo "$num2"
    echo "$sum"
    
    return 0
}
addnum 5 10
addnum 3 7
addnum 12 8
