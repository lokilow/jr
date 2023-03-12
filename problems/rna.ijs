NB. The Second Nucleic Acid
NB. Problem
NB. An RNA string is a string formed from the alphabet containing 'A', 'C', 'G', and 'U'.

NB. Given a DNA string t
NB.  corresponding to a coding strand, its transcribed RNA string u
NB.  is formed by replacing all occurrences of 'T' in t
NB.  with 'U' in u

NB. Given: A DNA string t
NB.  having length at most 1000 nt.

NB. Return: The transcribed RNA string of t.
to_rna =: 3 : 0
idx =. ('T'=y) # (i.#y)
'U' idx } y
)


NB. I can probably move the I/O to a wrapper script
infile =. 2 } ARGV_z_
outfile =. <'result.txt'

rna =. to_rna fread infile

rna fwrite outfile
NB. Exit script with success
2!:55 '0'
