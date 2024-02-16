  program main
  character*10 c
  c = "   PASS1   "
  call sub(c)
  print *,c
  c = "   PASS2   "
  call foo(c)
  print *,c
  end

  subroutine sub(c)
  character*(*) c
  c = adjustl(c)
  end 

  subroutine foo(c)
  character*(*) c
  call sub(c)
  end 


