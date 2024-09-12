subroutine sub()
  implicit none
  integer*8 i,n
  parameter(n=10000)
  integer*4 a
  real*4    b
  common/com/a(n), b(n)
  !$omp simd
  do i=1,n
     a(i) = ceiling(b(i))
  end do
end subroutine

program main
  implicit none
  integer*8 i,n
  parameter(n=10000)
  integer*4 a
  real*4    b,r
  common/com/a(n), b(n)
  r = -100.0
  do i=1,n
    b(i) = r
    r = r + 0.1
  end do
  call sub
  if (a(1) .eq. -100 .and. a(n) .eq. 900) then
     print *, "PASS"
  else
     print *, "NG",a(1), a(n)
  endif
end program
