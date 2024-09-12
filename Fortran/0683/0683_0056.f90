subroutine sub()
  implicit none
  integer*8 i,n
  parameter(n=10003)
  complex*8 a,b
  complex*8 cv
  common/com1/a(n)
  common/com2/b(n)
  common/com3/cv(n)
  !$omp simd
  do i=1,n
     a(i) = b(i) ** cv(i)
  end do
end subroutine

program main
  implicit none
  integer*8 n
  parameter(n=10003)
  complex*8 a,b
  complex*8 cv
  common/com1/a(n)
  common/com2/b(n)
  common/com3/cv(n)
  cv = 3
  b=2
  call sub
  if (a(1) .eq. 8 .and. a(n) .eq. 8) then
     print *, "PASS"
  else
     print *, a(1), a(n)
  endif
end program
