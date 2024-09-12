subroutine sub()
  implicit none
  integer*8 i,n
  parameter(n=10003)
  real*4 a
  complex*8 b
  common/com1/a(n)
  common/com2/b(n)
  !$omp simd
  do i=1,n
     a(i) = cabs(b(i)) + a(i)
  end do
end subroutine

program main
  implicit none
  integer*8 n
  parameter(n=10003)
  real*4 a
  complex*8 b
  common/com1/a(n)
  common/com2/b(n)
  a = 0
  b = (2, 5)
  call sub
  if (a(1) .eq. cabs((2.,5.)) .and. a(n) .eq. cabs((2.,5.))) then
     print *, "PASS"
  else
     print *, a(1), a(n)
  endif
end program
