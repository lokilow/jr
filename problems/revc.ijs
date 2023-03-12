NB. The Secondary and Tertiary Structures of DNA

NB. Problem
NB. In DNA strings, symbols 'A' and 'T' are complements of each other, as are 'C' and 'G'.

NB. The reverse complement of a DNA string s is the string sc
NB. formed by reversing the symbols of s, 
NB. then taking the complement of each symbol (e.g., the reverse complement of "GTCA" is "TGAC").

NB. Given: A DNA string s of length at most 1000 bp.

NB. Return: The reverse complement sc of s.
base_complement =: 3 : 0
select. y
case. 'A' do. 'T'
case. 'T' do. 'A'
case. 'C' do. 'G'
case. 'G' do. 'C'
end.
)

NB. I can probably move the I/O to a wrapper script
infile =. 2 } ARGV_z_
outfile =. <'result.txt'

NB. Drop final character, the LF
NB. There should be a better way to do this
dna =. }: freads infile

reverse_complement =. |.;base_complement each dna
(reverse_complement,LF) fwrite outfile

NB. Exit script with success
2!:55 '0'
