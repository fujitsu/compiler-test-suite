subroutine sub()
  implicit none
  integer*8 i,n
  parameter(n=10000)
  real*8 a,b
  common/com1/a(n)
  common/com2/b(n)
  !$omp simd
  do i=1,n
     a(i) = sin(b(i))
  end do
end subroutine

program main
  implicit none
  integer*8 n
  parameter(n=10000)
  real*8 a,b
  common/com1/a(n)
  common/com2/b(n)
  a = 1
  b = 1
  call sub
  if (a(1) .eq. sin(1.0_8) .and. a(n) .eq. sin(1.0_8)) then
     print *, "PASS"
  else
     print *, a(1), a(n)
  endif
end program
