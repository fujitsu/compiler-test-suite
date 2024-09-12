
  real(kind=4),target :: t1 = 1.0
  real(kind=4),pointer :: p1
  real(kind=4),pointer :: p2
  real(kind=4),pointer :: p3

  data p1,p2,p3 /3*t1/
  
  print *,p1,p2,p3
end program
