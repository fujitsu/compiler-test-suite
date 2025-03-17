program main

  implicit NONE

  complex :: IZ(10,10), COSHZ(10,10)
  real :: X(10,10), Y(10,10)

  integer :: I, N

  character(10) :: LINE

  double precision :: T0, T1, T2

  n=2

  call random_number ( x )
  call random_number ( y )
  iz = cmplx(-y,x)

  call cpu_time ( t0 )
!$OMP PARALLEL DO
  do i = 1, n
    coshz = cos(iz)
  end do
!$OMP END PARALLEL DO
  call cpu_time ( t1 )
!$OMP PARALLEL DO
  do i = 1, n
    coshz = cmplx(cosh(x)*cos(y),sinh(x)*sin(y))
  end do
!$OMP END PARALLEL DO
  call cpu_time ( t2 )

print *,'pass'

end program main
