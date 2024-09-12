subroutine sub()
  implicit none
  integer*8 i,n
  parameter(n=10003)
  integer*4 a,b,t(1)
  common/com1/a(n)
  common/com2/b(n)
  !$omp simd
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
  integer*4 a,b
  common/com1/a(n)
  common/com2/b(n)
  b = 0
  call sub
  if (a(1) .eq. 3 .and. a(n) .eq. 3) then
     print *, "PASS"
  else
     print *, a(1), a(n)
  endif
end program
