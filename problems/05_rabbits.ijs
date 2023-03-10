NB. Problem
NB. A sequence is an ordered collection of objects (usually numbers), which are allowed to repeat. Sequences can be finite or infinite. Two examples are the finite sequence (π,−2‾√,0,π)
NB.  and the infinite sequence of odd numbers (1,3,5,7,9,…)
NB. . We use the notation an
NB.  to represent the n
NB. -th term of a sequence.

NB. A recurrence relation is a way of defining the terms of a sequence with respect to the values of previous terms. In the case of Fibonacci's rabbits from the introduction, any given month will contain the rabbits that were alive the previous month, plus any new offspring. A key observation is that the number of offspring in any month is equal to the number of rabbits that were alive two months prior. As a result, if Fn
NB.  represents the number of rabbit pairs alive after the n
NB. -th month, then we obtain the Fibonacci sequence having terms Fn
NB.  that are defined by the recurrence relation Fn=Fn−1+Fn−2
NB.  (with F1=F2=1
NB.  to initiate the sequence). Although the sequence bears Fibonacci's name, it was known to Indian mathematicians over two millennia ago.

NB. When finding the n
NB. -th term of a sequence defined by a recurrence relation, we can simply use the recurrence relation to generate terms for progressively larger values of n
NB. . This problem introduces us to the computational technique of dynamic programming, which successively builds up solutions by using the answers to smaller cases.

NB. Given: Positive integers n≤40 and k≤5

NB. Return: The total number of rabbit pairs that will be present after n
NB.  months, if we begin with 1 pair and in each generation, every pair of reproduction-age rabbits produces a litter of k
NB.  rabbit pairs (instead of only 1 pair).


test_data=: 0 : 0
5 3
)

test_result=: 19

data=: set_data ''
d=:>cutopen data
NB. Converts to integer list
d=:".>cutopen data
NB. Ravel turns the array with shape 1 2 into a list of #2
d=:,d
generations=:{.d
NB. Behead, removes first element
rate=:}.d


NB. Returns the total pairs for generations x
NB. and reprodcution rate y
total_pairs =: 4 : 0
generations_remaining =: x - 1
reproduction_rate =: y
0 reproduce 1
)

NB. recursive step
reproduce =: 4 : 0
if. generations_remaining = 0 do.
  x + y
else.
  generations_remaining =: generations_remaining - 1
  (x + y) reproduce x * reproduction_rate
end.
)

result =: generations total_pairs rate
NB. Didnt parse file for this script, just cat file and use execute function in jconsole
