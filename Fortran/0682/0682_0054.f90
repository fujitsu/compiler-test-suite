subroutine sub()
  implicit none
  integer*8 i,n
  parameter(n=10003)
  real*4 a,b
  integer s,x,y,z
  common/com1/a(n)
  common/com2/b(n)
  common/com3/s,x,y,z
  !$omp simd
  do i=1,n
     a(i) = b(i) + 3
!$omp ordered simd
     select case(mod(s, 4))
     case (0)
     case (1)
        x = x + 1
     case (2)
        y = y + 1
     case default
        z = z + 1
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
  integer s,x,y,z
  common/com1/a(n)
  common/com2/b(n)
  common/com3/s,x,y,z
  s = 0; x = 0 ; y = 0; z = 0
  b = 0
  call sub
  if (a(1) .eq. 3 .and. a(n) .eq. 3) then
     if ( s.eq.10003 .and. x .eq. 2501 .and. y .eq. 2501 .and. z .eq. 2500) then
       print *, "PASS"
     else
       print *, "NG2:", s, x, y ,z
     endif
  else
     print *, "NG:", a(1), a(n)
  endif
end program