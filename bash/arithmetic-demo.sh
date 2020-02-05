#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

firstnum=5
secondnum=2
sum=$((firstnum + secondnum))
dividend=$((firstnum / secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")

cat <<EOF
$firstnum plus $secondnum is $sum
$firstnum divided by $secondnum is $dividend
  - More precisely, it is $fpdividend
EOF

prompt="Enter two numbers:"
read -p "$prompt" firstnum secondnum
echo "you entered $firstnum, $secondnum"
echo ""

sum=$(($firstnum + $secondnum))
product=$(($firstnum * $secondnum))
difference=$(($firstnum - $secondnum))
remainder=$(($firstnum % $secondnum))

echo "the sum of the numbers is $sum"
echo "the product of numbers is $product"
echo "the difference of the numbers is $difference"
echo "the remainder of the numbers is $remainder"
