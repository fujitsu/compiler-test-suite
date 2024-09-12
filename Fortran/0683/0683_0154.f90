subroutine sub()
  implicit none
  integer*8 i,n
  parameter(n=10003)
  integer*8 a,b
  common/com1/a(n)
  common/com2/b
  !$omp simd
  do i=1,n
     a(i) = loc(b)
  end do
end subroutine

program main
  implicit none
  integer*8 n
  parameter(n=10003)
  integer*8 a,b
  common/com1/a(n)
  common/com2/b
  b = 0
  call sub
  if (a(1) .eq. loc(b) .and. a(n) .eq. loc(b)) then
     print *, "PASS"
  else
     print *, a(1), a(n)
  endif
end program
