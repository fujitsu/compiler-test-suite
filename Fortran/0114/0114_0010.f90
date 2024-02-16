  program main
  character*10 c
  c = "   PASS1   "
  call sub(c,10)
  print *,c
  c = "   PASS2   "
  call foo(c,10)
  print *,c
  end

  subroutine sub(c,n)
  character*(n) c
  c = adjustr(c)
  end 

  subroutine foo(c,n)
  character*(n) c
  call sub(c,n)
  end 


