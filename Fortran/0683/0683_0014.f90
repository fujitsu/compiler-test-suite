!
!
subroutine sub()
  implicit none
  integer*8 i,n
  parameter(n=3)
  integer*8 a,b
  integer*4 c
  common/com1/a(n)
  common/com2/b(n)
  common/com3/c(n)
  !$omp simd
  do i=1,n
     a(i) = c(i)
  end do
end subroutine

program main
  implicit none
  integer*8 n
  parameter(n=3)
  integer*8 a,b
  integer*4 c
  common/com1/a(n)
  common/com2/b(n)
  common/com3/c(n)
  c=3
  b=2
  call sub
  if (a(1) .eq. 3 .and. a(n) .eq. 3) then
     print *, "PASS"
  else
     print *, a(1), a(n)
  endif
end program
