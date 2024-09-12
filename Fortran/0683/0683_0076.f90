subroutine sub(x,m)
  implicit none
  integer*8 i,n,m
  parameter(n=10003)
  real*4 a,b,x(n)
  common/com1/a(n)
  common/com2/b(n)  
  !$omp simd lastprivate(x)
  do i=1,m
     x(1) = b(i) + 3
     a(i) = x(1)
  end do
end subroutine

program main
  implicit none
  integer*8 n
  parameter(n=10003)
  real*4 a,b,x(n)
  common/com1/a(n)
  common/com2/b(n)  
  b = 0
  call sub(x,n)
  if (a(1) .eq. 3 .and. a(n) .eq. 3 .and. x(1) .eq. 3) then
     print *, "PASS"
  else 
     print *, a(1), a(n)
  endif
end program
