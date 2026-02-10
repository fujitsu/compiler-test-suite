type T
  real*8 r1, r2
end type
type(T) if1, if2, tt
  tt = if1(1.0)
  if (tt%r2 .ne. 0) stop '1'
  tt = if2(2)
  if (tt%r2 .ne. 1) stop '2'
  print *,'PASS'
end program
