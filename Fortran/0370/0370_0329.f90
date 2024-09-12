
  integer(kind=4),target :: t0=5
  integer(kind=8),target :: t1=10
  integer(kind=8),target :: t2=20
  real   (kind=8),target :: t3=30.0
  
  integer(kind=8),pointer :: p1
  integer(kind=8),pointer :: p2
  integer(kind=4),pointer :: p3
  real   (kind=8),pointer :: p4

  data p1,p2,p3,p4 /t1,t2,t0,t3/
  
  print *, t1,t2,t0,t3
  print *, p1,p2,p3,p4

end program
