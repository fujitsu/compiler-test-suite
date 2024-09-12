
  character(kind=4),target :: c1       = 4_'x'
  character(kind=4,len=3),target :: s1 = 4_'abc'

  character(kind=4),pointer :: pc
  character(kind=4,len=3),pointer :: ps
 
  data pc /c1/
  data ps /s1/
  
  print *, c1
  print *, s1
  print *, pc
  print *, ps
end program
