subroutine sub()
  implicit none
  integer*8 i,n
  parameter(n=10003)
  complex*32 a,b,c
  common/com1/a(n)
  common/com2/b(n)
  common/com3/c(n)
  !$omp simd
  do i=1,n
     a(i) = b(i) * c(i)
  end do
end subroutine

program main
  implicit none
  integer*8 n
  parameter(n=10003)
  complex*32 a,b,c
  common/com1/a(n)
  common/com2/b(n)
  common/com3/c(n)
  b = 2
  c = 3
  call sub
  if (a(1) .eq. 6 .and. a(n) .eq. 6) then
     print *, "PASS"
  else
     print *, a(1), a(n)
  endif
end program
