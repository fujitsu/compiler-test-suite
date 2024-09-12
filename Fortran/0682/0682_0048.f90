subroutine sub()
  implicit none
  integer*8 i,n
  parameter(n=10003)
  real*4 a,b,s,t
  common/com1/a(n)
  common/com2/b(n)
  common/com3/s
  !$omp simd reduction(+:s)
  do i=1,n
     t = b(i) + 3
!$omp ordered  simd
     a(i) = t
!$omp end ordered
     s = s + a(i)
  end do
end subroutine

program main
  implicit none
  integer*8 n
  parameter(n=10003)
  real*4 a,b,s
  common/com1/a(n)
  common/com2/b(n)
  common/com3/s
  b = 0
  call sub
  if (a(1) .eq. 3 .and. a(n) .eq. 3) then
     if (s .eq. 30009.0) then
       print *, "PASS"
     else
       print *, s
     endif
  else
     print *, a(1), a(n)
  endif
end program
