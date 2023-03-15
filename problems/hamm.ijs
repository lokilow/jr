NB. Evolution as a Sequence of Mistakes

NB. Given two strings s
NB.  and t
NB.  of equal length, the Hamming distance between s
NB.  and t
NB. , denoted dH(s,t)
NB. , is the number of corresponding symbols that differ in s
NB.  and t
NB. . See Figure 2.

NB. Given: Two DNA strings s
NB.  and t
NB.  of equal length (not exceeding 1 kbp).

NB. Return: The Hamming distance dH(s,t)
NB. .

test_data=: 0 : 0
GAGCCTACTAACGGGAT
CATCGTAATGACGGCCT
)

test_result=: 7

data=:read_data ''
boxed=:cutopen data
a=: >0 } boxed
b=: >1 } boxed

NB. -. applies "not" to a boolean
NB. took me forever to find this...friggin academics
hamm =: 13 : '+/ -. x = y'

result =: a hamm b
outfile =. <'result.txt'
text_result=: (":result),LF
exit text_result fwrite outfile
