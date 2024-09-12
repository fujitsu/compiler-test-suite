subroutine sub()
!$omp declare simd
  implicit none
  integer*8 i,n
  parameter(n=10000)
  real*4 a,b
  common/com1/a(n)
  common/com2/b(n)
  common/com3/i
  a(i) = b(i) + 3
end subroutine

subroutine test()
  implicit none
  integer*8 i,n,j
  parameter(n=10000)
  real*4 a,b
  common/com1/a(n)
  common/com2/b(n)
  common/com3/j
  !$omp simd
  do i=1,n
     j = i
     call sub
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
     print *, a(1), a(n)
  endif
end program
