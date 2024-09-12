subroutine sub()
  implicit none
  integer*8 i,n
  parameter(n=10000)
  real*4 a,b
  common/com1/a(n)
  common/com2/b(n)
  !$omp simd
  do i=1,n
     a(i) = asin(b(i))
  end do
end subroutine

program main
  implicit none
  integer*8 n
  parameter(n=10000)
  real*4 a,b
  common/com1/a(n)
  common/com2/b(n)
  a = 1
  b = .2
  call sub
  if (a(1) .eq. asin(.2) .and. a(n) .eq. asin(.2)) then
     print *, "PASS"
  else
     print *, a(1), a(n)
  endif
end program
