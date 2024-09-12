
  integer(kind=8),target :: t1 = 5
  integer(kind=8),pointer :: p1 => t1

  if (t1.ne.p1) print *,'err1'
  if (p1.ne.5) print *,'err2'
  print *, t1
  print *, p1
end program
