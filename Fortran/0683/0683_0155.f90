subroutine sub()
  implicit none
  integer*8 i,n
  parameter(n=10003)
  integer*4 a,b
  common/com1/a(n)
  common/com2/b(1)
  !$omp simd
  do i=1,n
     b(1) = a(i)
  end do
end subroutine

program main
  implicit none
  integer*8 i,n
  parameter(n=10003)
  integer*4 a,b
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
