NB. Finding a Motif in DNA

NB. Combing Through the Haystack
NB. Problem
NB. Given two strings s and t, t is a substring of s if t is contained as a contiguous collection of symbols in s
NB. (as a result, t must be no longer than s).

NB. The position of a symbol in a string is the total number of symbols found to its left, including itself
NB. (e.g., the positions of all occurrences of 'U' in "AUGCUUCAGAAAGGUCUUACG" are 2, 5, 6, 15, 17, and 18).
NB. The symbol at position i of s is denoted by s[i].

NB. A substring of s can be represented as s[j:k], where j and k represent the starting and ending positions
NB. of the substring in s; for example, if s = "AUGCUUCAGAAAGGUCUUACG", then s[2:5] = "UGCU".

NB. The location of a substring s[j:k] is its beginning position j;
NB. note that t will have multiple locations in s if it occurs more than once as a substring of s

NB. Given: Two DNA strings s and t (each of length at most 1 kbp)

NB. Return: All locations of t as a substring of s


test_data=: 0 : 0
GATATATGCATATACTT
ATAT
)
test_result=:2 4 10

data=:read_data ''
('str';'sstr')=:cutopen data

ss1=: 4 : 0
sstr=.x[str=.y
lsstr=.#sstr
index=.0[indices=.i.0
iterations=.(#str)-lsstr
while. iterations > 0 do.
  if. sstr -: lsstr {. str do.
    indices=. indices,index
  end.
  str=.}.str
  index=.>:index
  iterations=.<:iterations
end.
NB. Rosalind 1-indexes
>:indices
)

ss2=: 4 : 0
s=.y[ss=.x
slices=:(#ss)[\s
matches=:ss-:"1 slices
1+matches#i.#slices
)

result=:sstr ss2 str
write_data result
