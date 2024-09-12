subroutine sub()
  implicit none
  integer*8 i,n
  parameter(n=10003)
  real*4 a,b
  common/com1/a(n)
  common/com2/b(1)
  !$omp simd
  do i=1,n
     if (a(i)>1000) then
        b(1) = a(i)
     endif
  end do
end subroutine

program main
  implicit none
  integer*8 i,n
  parameter(n=10003)
  real*4 a,b
  common/com1/a(n)
  common/com2/b(1)
  do i=1,n
     a(i) = i
  end do
  call sub
  if (b(1) .eq. n) then
     print *, "PASS"
  else
     print *, b
  endif
end program
