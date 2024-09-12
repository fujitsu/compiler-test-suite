subroutine sub()
  implicit none
  integer*8 i,n
  parameter(n=10003)
  integer*8 a,b,iv
  common/com1/a(n)
  common/com2/b(n)
  common/com3/iv(n)
  !$omp simd
  do i=1,n
     a(i) = b(i) ** iv(i)
  end do
end subroutine

program main
  implicit none
  integer*8 n
  parameter(n=10003)
  integer*8 a,b,iv
  common/com1/a(n)
  common/com2/b(n)
  common/com3/iv(n)
  iv = 3
  b=2
  call sub
  if (a(1) .eq. 8 .and. a(n) .eq. 8) then
     print *, "PASS"
  else
     print *, a(1), a(n)
  endif
end program
