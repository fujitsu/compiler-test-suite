subroutine sub()
  implicit none
  integer*8 i,j,n
  parameter(n=10003)
  real*8 a,b,s
  common/com1/a(n)
  common/com2/b(n)
  common/com3/s(10)
  !$omp simd
  do i=1,n
     a(i) = b(i) + 3
!$omp ordered simd
     do j=1,10
       s(j) = s(j) + 1
     enddo
!$omp end ordered
  end do
end subroutine

program main
  implicit none
  integer*8 n
  parameter(n=10003)
  real*8 a,b,s
  common/com1/a(n)
  common/com2/b(n)
  common/com3/s(10)
  s = 0
  b = 0
  call sub
  if (a(1) .eq. 3 .and. a(n) .eq. 3) then
     if ( all(s==10003) ) then
       print *, "PASS"
     else
       print *, "NG2:", s
     endif
  else
     print *, "NG:", a(1), a(n)
  endif
end program
