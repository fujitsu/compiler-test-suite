subroutine sub(a, n)
  implicit none
  integer*8 i,n
  real*4 a(n),ss
  common/com2/ss
  !$omp simd reduction(+:ss)
  do i=1,n
     ss = ss + a(i)
  end do
end subroutine

program main
  implicit none
  integer*8 i,n
  parameter(n=10003)
  real*4 a,ss,r
  common/com1/a(n)
  common/com2/ss
  ss =0
  do i=1,n
     a(i) = i
  end do
  call sub(a, n)
  r = ss
  r = abs((r-50035004.0)/r)
  if (r > 0.0001) then
     print *, ss, r
     stop
  endif
  print *, "PASS"
end program
