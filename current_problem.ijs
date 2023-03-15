#!jc
cp=:'problems/subs.ijs'
l=:load

NB. Expects problem file to define `test_data`.
NB. If a filename is passed, that will be parsed instead
set_data=: 3 : 0
args=: ARGV_z_
if. 3 = #args do.
  infile=: 2 } args
  fread infile
else. 
  test_data
end.
)

write_data=: 3 : 0
result=: y
if. 3 = #ARGV_z_ do.
outfile=. <'result.txt'
text_result=: (":result),LF
exit text_result fwrite outfile
else. 
  result
end.
)
  
NB. Load current problem
l cp
