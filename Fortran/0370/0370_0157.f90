  complex(kind=8),target :: c1 = (1.0,2.0)
  complex(kind=8),pointer :: p1 => c1
  real(kind=8),pointer :: r1 => c1%im
  real(kind=8),pointer :: r2 => c1%re

  print *, c1
  print *, p1
  print *, r1
  print *, r2
end program
