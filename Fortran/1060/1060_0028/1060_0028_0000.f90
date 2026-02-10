character*10 fun, ch, ent

  ch = fun()
  if (ch .ne. "ABC") stop 

  ch = ent()
  if (ch .ne. "ABC") stop 
  
  print *,'PASS'

end program
