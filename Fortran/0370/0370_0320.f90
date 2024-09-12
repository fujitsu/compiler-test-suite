
  complex(kind=8),target :: c1 = (1.0,2.0)
  complex(kind=8),pointer :: p1
  real(kind=8),pointer :: p2
  real(kind=8),pointer :: p3

  data p1 /c1/
  data p2 /c1%im/
  data p3 /c1%re/
  
  print *, c1
  print *, p1
  print *, p2
  print *, p3
end program
