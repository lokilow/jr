NB. Problem
NB. The GC-content of a DNA string is given by the percentage of symbols in the string that are 'C' or 'G'. For example, the GC-content of "AGCTATAG" is 37.5%. Note that the reverse complement of any DNA string has the same GC-content.

NB. DNA strings must be labeled when they are consolidated into a database. A commonly used method of string labeling is called FASTA format. In this format, the string is introduced by a line that begins with '>', followed by some labeling information. Subsequent lines contain the string itself; the first line to begin with '>' indicates the label of the next string.

NB. In Rosalind's implementation, a string in FASTA format will be labeled by the ID "Rosalind_xxxx", where "xxxx" denotes a four-digit code between 0000 and 9999.

NB. Given: At most 10 DNA strings in FASTA format (of length at most 1 kbp each).

NB. Return: The ID of the string having the highest GC-content, followed by the GC-content of that string. Rosalind allows for a default error of 0.001 in all decimal answers unless otherwise stated; please see the note on absolute error below.


NB. test data has LFs in base pairs
test_data=: 0 : 0
>Rosalind_6404
CCTGCGGAAGATCGGCACTAGAATAGCCAGAACCGTTTCTCTGAGGCTTCCGGCCTTCCC
TCCCACTAATAATTCTGAGG
>Rosalind_5959
CCATCGGTAGCGCATCCTTAGTCCAATTAAGTCCCTATCCAGGCGCTCCGCCGAAGGTCT
ATATCCATTTGTCAGCAGACACGC
>Rosalind_0808
CCACCCTCGTGGTATGGCTAGGCATTCAGGAACCGGAGAACGCTTCAGACCAGCCCGGAC
TGGGAACCTGCGGGCAGTAGGTGGAAT
)

test_result=: 0 : 0
Rosalind_0808
60.919540
)

NB. data
d=:test_data
d=: '>' cutopen test_data
NB. take first item to write transformation
i=: {.d
NB. unbox
i=: >i
NB. slit into boxes by LF (LineFeed)
i=: LF cut i
NB. first item is metadata
md=: {.i
NB. Remaining items are the base pairs
bp=: }. i
NB. Raze (joins items together into one array)
bp=: ;bp
NB. Number of bases that are C or G?
nb=: +/('C'=bp),('G'=bp)
NB. the percentage of bases that are C or G
p=: 100 * nb % (# bp)

