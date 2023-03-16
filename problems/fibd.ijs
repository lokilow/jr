NB. Mortal Fibonacci Rabbits

NB. Problem
NB. Recall the definition of the Fibonacci numbers from “Rabbits and Recurrence Relations”, which followed 
NB. the recurrence relation Fn=Fn−1+Fn−2 and assumed that each pair of rabbits reaches maturity in one month
NB. and produces a single pair of offspring (one male, one female) each subsequent month.

NB. Our aim is to somehow modify this recurrence relation to achieve a dynamic programming solution in the case 
NB. that all rabbits die out after a fixed number of months.

NB. Given: Positive integers n≤100 and m≤20

NB. Return: The total number of pairs of rabbits that will remain after the n-th month if all rabbits live for m months.

test_data=: 0 : '6 3'
test_result=: 4

