subroutine sub()
  implicit none
  integer*8 i,n
  parameter(n=10003)
  integer*8 a,b
  common/com1/a(n)
  common/com2/b
  !$omp simd lastprivate(b)
  do i=1,n
     b = a(i)
  end do
end subroutine

program main
  implicit none
  integer*8 i,n
  parameter(n=10003)
  integer*8 a,b
  common/com1/a(n)
  common/com2/b
  do i=1,n
     a(i) = i
  end do
  call sub
  if (b .eq. n) then
     print *, "PASS"
  else
     print *, b
  endif
end program