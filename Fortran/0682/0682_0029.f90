subroutine sub1()
  implicit none
  integer*4 i,n
  parameter(n=10003)
  integer*4 a,b
  common/com1/a(n)
  common/com2/b(n)
  !$omp simd
  do i=1,n
     a(i) = b(i) + 2
!$omp ordered simd
     a(i) = a(i) + 1
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
  call sub1
  if (a(1) .eq. 3 .and. a(n) .eq. 3) then
  else
     print *, "NG2", a(1), a(n)
     stop
  endif
  print *, "PASS"
end program

