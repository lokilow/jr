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

data=:read_data ''

read_codon_table=: 3 : 0
f=.'data/codon_table.txt'
d=.fread f
ct=.>(' ' cut >) each cutopen d
)

ct=:read_codon_table ''

lookup=: 4 : 0
key=.x
dict=.y
value=.''
for_entry. dict do.
  if. key -: >0{entry do.
    value=.>1{entry
  end.
end.
value
)

rna_to_protein =: 3 : 0
rna=:y
protein=:''
amino_acid=:''
while. -.amino_acid -: 'Stop' do.
  protein=:protein,amino_acid
  codon=:3{.rna
  rna=:3}.rna
  amino_acid=: codon lookup ct
end.
protein
)

result=: rna_to_protein data
outfile=. <'result.txt'
text_result=: (":result),LF
write_data text_result 
