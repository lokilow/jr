NB. Translating RNA into Protein
NB. The Genetic Code
NB. Problem
NB. The 20 commonly occurring amino acids are abbreviated by using 20 letters from the English alphabet
NB. (all letters except for B, J, O, U, X, and Z). Protein strings are constructed from these 20 symbols.
NB. Henceforth, the term genetic string will incorporate protein strings along with DNA strings and RNA strings.

NB. The RNA codon table dictates the details regarding the encoding of specific codons into the amino acid alphabet.

NB. Given: An RNA string s corresponding to a strand of mRNA (of length at most 10 kbp)

NB. Return: The protein string encoded by s


test_data=: 0 : 'AUGGCCAUGGCGCCCAGAACUGAGAUCAAUAGUACCCGUAUUAACGGGUGA'
test_result=: 0 : 'MAMAPRTEINSTRING'

data=:set_data ''

read_codon_table=: 3 : 0
f=.'data/codon_table.txt'
d=.fread f
ct=.>(' ' cut >) each cutopen d
)

ct=:read_codon_table ''
