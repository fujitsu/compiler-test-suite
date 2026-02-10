type T
  real*8 r1(4), r2(4)
end type
type(T) st64_1
type(T) st64_2, tt
  tt = st64_1()
  if (any(tt%r1 .ne. 0)) stop '1-1'
  if (any(tt%r2 .ne. 0)) stop '1-2'
  tt = st64_2()
  if (any(tt%r1 .ne. 0)) stop '2-1'
  if (any(tt%r2 .ne. 1)) stop '2-2'
  print *,'PASS'
end program
