subroutine sub(t,m)
  implicit none
  integer*8 i,n,m
  parameter(n=10003)
  integer*4 a,b,t(1)
  common/com1/a(n)
  common/com2/b(n)
  !$omp simd private(t)
  do i=1,n
     t(1) = b(i) + 2
!$omp ordered simd
     a(i) = t(1) + 1
!$omp end ordered
  end do
end subroutine

program main
  implicit none
  integer*8 n
  parameter(n=10003)
  integer*4 a,b,t
  common/com1/a(n)
  common/com2/b(n)
  common/com3/t(n)
  b = 0
  call sub(t,n)
  if (a(1) .eq. 3 .and. a(n) .eq. 3) then
     print *, "PASS"
  else
     print *, a(1), a(n)
  endif
end program
