
  real(kind=8),target :: t1
  real(kind=8),target :: t2
  real(kind=8),pointer :: p1

  data t1,p1,t2 /10,t1,20/
  
  print *, t1
  print *, t2
  print *, p1
end program
