subroutine sub()
  implicit none
  integer*8 i,n
  parameter(n=10003)
  integer*4 a,b,t
  common/com1/a(n)
  common/com2/b(n)
  !$omp simd
  do i=1,n
     t = b(i) + 2
!$omp ordered simd
     a(i) = t + 1
!$omp end ordered
  end do
end subroutine

program main
  implicit none
  integer*8 i,n
  parameter(n=10003)
  integer*4 a,b
  common/com1/a(n)
  common/com2/b(n)
  do i=1,n
  b(i) = i
  end do
  call sub
  if (a(1) .eq. 4 .and. a(n) .eq. 10006) then
     print *, "PASS"
  else
     print *, a(1), a(n)
  endif
end program
