  
  integer(kind=8),target :: t1
  integer(kind=8),pointer :: p1 => t1

  t1=10
  print *,"OK"
end program
