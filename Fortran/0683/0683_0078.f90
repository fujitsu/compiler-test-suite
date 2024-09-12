subroutine sub(x)
  implicit none
  integer*8 i,n
  parameter(n=10003)
  real*4 a,b,x(n),c
  common/com1/a(n)
  common/com2/b(n)  
  common/com3/c(n)  
  !$omp simd lastprivate(x)
  do i=1,n
    if (c(i) > 0) then
     x(1) = b(i) + 3
     a(i) = x(1)
    endif
  end do
end subroutine

program main
  implicit none
  integer*8 n
  parameter(n=10003)
  real*4 a,b,x(n),c
  common/com1/a(n)
  common/com2/b(n)  
  common/com3/c(n)  
  a = 0
  c = 0
  c(3) = 2
  b = 0
  call sub(x)
  if (a(1) .eq. 0 .and. a(3) .eq. 3 .and. x(1) .eq. 3) then
     print *, "PASS"
  else 
     print *, a(1), a(3)
  endif
end program
