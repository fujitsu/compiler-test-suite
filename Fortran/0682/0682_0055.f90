subroutine sub()
  implicit none
  integer*8 i,n
  parameter(n=10003)
  real*4 a,b
  integer s,x
  common/com1/a(n)
  common/com2/b(n)
  common/com3/s,x(5)
  !$omp simd
  do i=1,n
     a(i) = b(i) + 3
!$omp ordered simd
     select case(mod(s, 5))
     case (0)
        x(1) = x(1) + 1
     case (1)
        x(2) = x(2) + 1
     case (2)
        x(3) = x(3) + 1
     case (3)
        x(4) = x(4) + 1
     case default
        x(5) = x(5) + 1
     end select
     s = s + 1
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
  common/com3/s,x(5)
  s = 0; x = 0
  b = 0
  call sub
  if (a(1) .eq. 3 .and. a(n) .eq. 3) then
     if ( s.eq.10003 .and. x(1) .eq. 2001 .and. x(2) .eq. 2001 .and. x(3) .eq. 2001 .and. x(4) .eq. 2000 .and. x(5).eq. 2000) then
       print *, "PASS"
     else
       print *, "NG2:", s, x(1), x(2) ,x(3), x(4), x(5)
     endif
  else
     print *, "NG:", a(1), a(n)
  endif
end program
