module mod
contains
subroutine sub(m,i)
!$omp declare simd linear(i:1)
  implicit none
  integer*8 i,n
  value i
  parameter(n=10000)
  real*4 a,b,m
  common/com1/a(n)
  common/com2/b(n)
  a(i) = b(i) + m
  i=i+2
end subroutine
end module

!
!
subroutine test()
  use mod
  implicit none
  integer*8 i,n
  parameter(n=10000)
  real*4 a,b,m
  common/com1/a(n)
  common/com2/b(n)
  m = 3
  !$omp simd linear(i:1)
  do i=1,n
     call sub(m,i)
  end do
end subroutine

program main
  implicit none
  integer*8 n
  parameter(n=10000)
  real*4 a,b
  common/com1/a(n)
  common/com2/b(n)
  a = 0
  b = 0
  call test
  if (a(1) .eq. 3 .and. a(n) .eq. 3) then
     print *, "PASS"
  else
     print *, 'NG', a(1), a(n)
  endif
end program
