subroutine sub()
  implicit none
  integer*8 i,n
  parameter(n=10003)
  real*4 a
  real*16 b,t
  common/com1/a(n)
  common/com2/b(n)
  !$omp simd
  do i=1,n
     a(i) = a(i) + 1
!$omp ordered simd
     t = b(i) + 2
!$omp end ordered
     b(i) =t
  end do
end subroutine

program main
  implicit none
  integer*8 n
  parameter(n=10003)
  real*4 a
  real*16 b
  common/com1/a(n)
  common/com2/b(n)
  a = 0
  b = 0
  call sub
  if (a(1) .eq. 1 .and. b(1) .eq. 2) then
     print *, "PASS"
  else
     print *, a(1), a(n)
  endif
end program
