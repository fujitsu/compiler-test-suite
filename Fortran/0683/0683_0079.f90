!
!
subroutine sub(nn,y)
  implicit none
  integer*8 i,n,nn
  parameter(n=10003)
  real*4 a,b,x(nn),y(n)
  common/com1/a(n)
  common/com2/b(n)
  !$omp simd lastprivate(x)
  do i=1,nn
     x(i) = b(i) + 3
     a(i) = x(i)
  end do
  y = x
end subroutine

program main
  implicit none
  integer*8 n
  parameter(n=10003)
  real*4 a,b,x(n)
  common/com1/a(n)
  common/com2/b(n)
  b = 0
  call sub(n,x)
  if (a(1) .eq. 3 .and. a(n) .eq. 3 .and. x(1) .eq. 0 .and. x(n) .eq. 3) then
     print *, "PASS"
  else if (a(1) .eq. 3 .and. a(n) .eq. 3 .and. x(n) .eq. 3) then
     print *, "PASS"
  else
     print *, a(1), a(n)
     print *, x(1:16)
     print *, x(n-16:n)
  endif
end program
