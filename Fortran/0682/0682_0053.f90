subroutine sub()
  implicit none
  integer*8 i,n
  parameter(n=10003)
  real*4 a,b
  integer s,x
  common/com1/a(n)
  common/com2/b(n)
  common/com3/s,x
  !$omp simd
  do i=1,n
     a(i) = b(i) + 3
!$omp ordered simd
     if (s.lt.10) then
       s = s + 1
     else
       x = x + 1
     endif
!$omp end ordered
  end do
end subroutine

program main
  implicit none
  integer*8 n
  parameter(n=10003)
  real*4 a,b
  integer s,x
  common/com1/a(n)
  common/com2/b(n)
  common/com3/s,x
  s = 0; x = 0
  b = 0
  call sub
  if (a(1) .eq. 3 .and. a(n) .eq. 3) then
     if ( s.eq.10 .and. x .eq. 9993) then
       print *, "PASS"
     else
       print *, "NG2:", s, x
     endif
  else
     print *, "NG:", a(1), a(n)
  endif
end program
