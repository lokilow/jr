NB. A Rapid Introduction to Molecular Biology
NB. Problem
NB. A string is simply an ordered collection of symbols selected from some alphabet and formed into a word; the length of a string is the number of symbols that it contains.

NB. An example of a length 21 DNA string (whose alphabet contains the symbols 'A', 'C', 'G', and 'T') is "ATGCTTCAGAAAGGTCTTACG."

NB. Given: A DNA string s
NB.  of length at most 1000 nt.

NB. Return: Four integers (separated by spaces) counting the respective number of times that the symbols 'A', 'C', 'G', and 'T' occur in s.


dna =: 3 : 0
a=.+/'A'=y
c=.+/'C'=y
g=.+/'G'=y
t=.+/'T'=y
NB. ": is the verb "format"
NB. it converts the array into a printable format,
NB. with a default of ' ' between entries
":a,c,g,t
)
