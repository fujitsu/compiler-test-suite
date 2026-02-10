type T
  character*1 c
end type
type(T) if1, if2, tt
  tt = if1()
  if (tt%c .ne. "0") stop '1'
  tt = if2()
  if (tt%c .ne. "1") stop '2'
  print *,'PASS'
end program
