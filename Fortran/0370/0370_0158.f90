  complex(kind=4),target :: c1 = (1.0,2.0)
  complex(kind=4),pointer :: p1 => c1
  real(kind=4),pointer :: r1 => c1%im
  real(kind=4),pointer :: r2 => c1%re

  complex(kind=16),target :: cc1 = (1.0,2.0)
  complex(kind=16),pointer :: pp1 => cc1
  real(kind=16),pointer :: rr1 => cc1%im
  real(kind=16),pointer :: rr2 => cc1%re

  print *, p1
  print *, r1
  print *, r2
  print *, pp1
  print *, rr1
  print *, rr2
end program
