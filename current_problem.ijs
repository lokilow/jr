#!jc
cp=:'problems/fib.ijs'
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
  
NB. Load current problem
l cp
