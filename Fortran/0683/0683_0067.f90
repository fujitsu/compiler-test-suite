subroutine sub(iv)
  implicit none
  integer*8 i,n
  parameter(n=10000)
  real*8 a,b
  integer*4 iv
  common/com/a(n), b(n)
  !$omp simd
  do i=1,n
     a(i) = b(i) ** iv
  end do
end subroutine

program main
  implicit none
  integer*8 n
  parameter(n=10000)
  real*8 a,b
  integer*4 iv
  common/com/a(n), b(n), iv(n)
  iv = 3
  b=2
  call sub(iv(1))
  if (a(1) .eq. 8 .and. a(n) .eq. 8) then
     print *, "PASS"
  else
     print *, a(1), a(n)
  endif
end program