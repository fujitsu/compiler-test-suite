subroutine sub(a, b, n)
  implicit none
  integer*4 i,n
  real*4 a(n), b(n)
  !$omp simd
  do i=1,n
     a(i) = b(i) + 3
  end do
end subroutine

program main
  implicit none
  integer*4 n
  parameter(n=10003)
  real*4 a,b
  common/com1/a(n)
  common/com2/b(n)
  b = 0
  call sub(a, b, n)
  if (a(1) .eq. 3 .and. a(n) .eq. 3) then
     print *, "PASS"
  else
     print *, a(1), a(n)
  endif
end program
