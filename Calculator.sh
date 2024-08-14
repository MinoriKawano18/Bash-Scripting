#Assignment for creating basic calculator in Bash. 
#We need to create a calculator that can perform additiong, subtraction, multiplication, and division. 
#The script will prompt the user to use two integers and choose an operation 
#The user will choose an operation and we will use conditionals to perform the chosen operation
#We will display the results of the operation
#We will need to create an error message if diving by zero

#!/bin/bash

# Perform addition
addition() {
	Answer=$((num1 + num2))
	echo "Answer: $num1 + $num2 = $Answer"
}

# Perform subtraction
subtraction() {
	Answer=$((num1 - num2))
	echo "Answer: $num1 - $num2 = $Answer"
}

# Perform multiplication
multiplication() {
	Answer=$((num1 * num2))
	echo "Answer: $num1 * $num2 = $Answer"

# Perform division
# We need an error message to generate if the user enters a division by zero

division() {
	if [ $num2 -eq 0 ]; then
		echo "Error: Cannot divide by zero."
	else
		Answer=$((num1 / num2))
		echo "Answer: $num1 / $num2 = $Answer"
	fi
}

# Define all the variables

# User enters two intergers
echo "Enter first interger"
read num1
echo "Enter second interger"
read num2

# User chooses an operation
echo "Choose an operation (+, -, *, /):"
read operation

# Perform operation using conditionals to create an option for the user
if [ "$operation" == "+" ]; then
	addition
elif [ "$operation" == "-" ]; then
	subtraction
elif [ "$operation" == "*" ]; then
	multiplication
elif [ "$operation" == "/" ]; then
	division
else
	echo "Error: Invalid operation. Please select either +, -, *, /."
fi
