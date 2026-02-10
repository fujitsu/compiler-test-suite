  real*16 f1,f2
  if (f1() .ne. 0) stop '1'
  if (f2() .ne. 1) stop '2'
  print *,'PASS'
end program
