type T
  logical*8 r1, r2
  logical*8 r3, r4
end type
type(T) if1, if2, tt
  tt = if1(1.0)
  if (tt%r3 .neqv. .false.) stop '1'
  tt = if2(2)
  if (tt%r3 .neqv. .true.) stop '2'
  print *,'PASS'
end program
