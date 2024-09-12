  integer(kind=8),target :: t1 = 1
  integer(kind=8),asynchronous :: t2 = 2
  integer(kind=8),target,asynchronous :: t3 = 3
  integer(kind=8),pointer :: p1 => t3
  integer(kind=8),pointer,asynchronous :: p2 => t3

  print *, p1,p2
end program
