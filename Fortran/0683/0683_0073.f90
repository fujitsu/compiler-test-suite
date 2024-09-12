subroutine sub(x)
  implicit none
  integer*8 i,n
  parameter(n=10003)
  real*4 a,b,x
  common/com1/a(n)
  common/com2/b(n)  
  !$omp simd lastprivate(x)
  do i=1,n
     x = b(i) + 3
     a(i) = x
  end do
end subroutine

program main
  implicit none
  integer*8 n
  parameter(n=10003)
  real*4 a,b,x
  common/com1/a(n)
  common/com2/b(n)  
  b = 0
  call sub(x)
  if (a(1) .eq. 3 .and. a(n) .eq. 3 .and. x .eq. 3) then
     print *, "PASS"
  else 
     print *, a(1), a(n)
  endif
end program