subroutine sub()
  implicit none
  integer*8 i,n
  parameter(n=10003)
  complex*16 a,b
  common/com1/a(n)
  common/com2/b(n)
  !$omp simd
  do i=1,n
     a(i) = cdlog(b(i))
  end do
end subroutine

program main
  implicit none
  integer*8 n
  parameter(n=10003)
  complex*16 a,b
  common/com1/a(n)
  common/com2/b(n)
  b = 2
  call sub
  if (a(1) .eq. cdlog((2.0_8,0)) .and. a(n) .eq. cdlog((2.0_8,0))) then
     print *, "PASS"
  else
     print *, a(1), a(n)
  endif
end program
