  program main
    real :: r(2)
    complex :: c
    r = 1.0
    c = cmplx( sum(r) )
    if (abs(c-2)>0.0001) print *,201
print *,'pass'
  end program main
