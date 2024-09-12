subroutine sub()
  implicit none
  integer*8 i,n
  parameter(n=10003)
  character*1 a,b
  common/com1/a(n)
  common/com2/b(n)
  !$omp simd
  do i=1,n
!$omp ordered simd
     a(i) = char(ichar(b(i)) + 3)
!$omp end ordered
  end do
end subroutine

program main
  implicit none
  integer*8 n
  parameter(n=10003)
  character*1 a,b
  common/com1/a(n)
  common/com2/b(n)
  b = char(0)
  call sub
  if (a(1) .eq. char(3) .and. a(n) .eq. char(3)) then
     print *, "PASS"
  else
     print *, "NG:", a(1), a(n)
  endif
end program
