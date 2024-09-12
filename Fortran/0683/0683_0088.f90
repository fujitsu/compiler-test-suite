subroutine sub(nn)
  implicit none
  integer*8 i,n,nn
  real*4 a,b,x(nn)
  parameter(n=10003)
  common/com1/a(n)
  common/com2/b(n)  
  !$omp simd private(x)
  do i=1,nn
     x(1) = b(i) + 3
     a(i) = x(1)
  end do
end subroutine

program main
  implicit none
  integer*8 n
  parameter(n=10003)
  real*4 a,b
  common/com1/a(n)
  common/com2/b(n)  
  b = 0
  call sub(n)
  if (a(1) .eq. 3 .and. a(n) .eq. 3) then
     print *, "PASS"
  else 
     print *, a(1), a(n)
  endif
end program
