
  integer(kind=2),target :: t0 = 3
  integer(kind=8),target :: t1 = 5
  integer(kind=8) :: aa,bb
  integer(kind=2),pointer :: p0
  integer(kind=8),pointer :: p1

  data p0,aa,bb,p1 /t0,10,20,t1/
  
  print *, p0,aa,bb,p1
end program
