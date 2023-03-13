NB. Mendel's First Law
NB. Introduction to Mendelian Inheritance
NB. Problem

NB. Probability is the mathematical study of randomly occurring phenomena. 
NB. We will model such a phenomenon with a random variable, which is simply
NB. a variable that can take a number of different distinct outcomes depending 
NB. on the result of an underlying random process.

NB. For example, say that we have a bag containing 3 red balls and 2 blue balls. If we let X
NB. represent the random variable corresponding to the color of a drawn ball, then the probability 
NB. of each of the two outcomes is given by Pr(X=red)=35 and Pr(X=blue)=25.

NB. Random variables can be combined to yield new random variables. Returning to the ball example, let Y
NB.  model the color of a second ball drawn from the bag (without replacing the first ball). The probability of Y
NB.  being red depends on whether the first ball was red or blue. To represent all outcomes of X and Y,
NB. we therefore use a probability tree diagram. This branching diagram represents all possible individual 
NB. probabilities for X and Y, with outcomes at the endpoints ("leaves") of the tree. The probability of any outcome 
NB. is given by the product of probabilities along the path from the beginning of the tree.

NB. An event is simply a collection of outcomes. Because outcomes are distinct, the probability of an event 
NB. can be written as the sum of the probabilities of its constituent outcomes. For our colored ball example,
NB. let A be the event "Y is blue." Pr(A)
NB.  is equal to the sum of the probabilities of two different outcomes: 
NB. Pr(X=blue and Y=blue)+Pr(X=red and Y=blue), or 310+110=25

NB. Given: Three positive integers k, m, and n, representing a population containing k+m+n organisms:
NB. k individuals are homozygous dominant for a factor, m are heterozygous, and n are homozygous recessive.

NB. Return: The probability that two randomly selected mating organisms will produce an individual 
NB. possessing a dominant allele (and thus displaying the dominant phenotype). Assume that any two organisms can mate.

test_data=: 0 : 0
2 2 2
)

test_result=: 0.78333

