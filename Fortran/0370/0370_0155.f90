  integer(kind=8),target :: t1 = 5
  integer(kind=8),target :: t2 = 7
  integer(kind=8),pointer :: p1 => t1
  integer(kind=8),pointer :: p2 => t1

  common /comx/ t1,t2,p1,p2

  print *, t1
  print *, t2
  print *, p1
  print *, p2

end program
