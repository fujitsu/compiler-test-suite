  
  integer(kind=8),target :: t1 = 5
  integer(kind=8),pointer :: p1 => t1

  print *, p1
end program
