#!/bin/bash

echo "=== The 'I Couldn't Find the Built-in App' Calculator ==="

read -p "Enter the first number: " num1
read -p "Enter an operator (+, -, *, /): " op
read -p "Enter the second number: " num2

# Validate that inputs are actually numbers (handles both integers and decimals)
if ! [[ "$num1" =~ ^-?[0-9]*\.?[0-9]+$ ]] || ! [[ "$num2" =~ ^-?[0-9]*\.?[0-9]+$ ]]; then
    echo "Error: Only numbers are allowed."
    exit 1
fi

# Calculate the result based on the operator
case "$op" in
    +) result=$(awk "BEGIN {print $num1 + $num2}") ;;
    -) result=$(awk "BEGIN {print $num1 - $num2}") ;;
    '*'|x|X) result=$(awk "BEGIN {print $num1 * $num2}") ;;
    /)
        if [ "$num2" == "0" ] || [ "$num2" == "0.0" ]; then
            echo "Error: Nice try, but you can't divide by zero."
            exit 1
        fi
        result=$(awk "BEGIN {print $num1 / $num2}") 
        ;;
    *) 
        echo "Error: Unknown operator. Please use +, -, *, or /."
        exit 1 
        ;;
esac

echo "---------------------------------------------------------"
echo "Result: $num1 $op $num2 = $result"
