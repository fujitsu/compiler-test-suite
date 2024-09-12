subroutine sub(a, n)
  implicit none
  integer*8 i,n
  complex*8 a(n),ss
  common/com2/ss
  !$omp simd reduction(+:ss)
  do i=1,n
     if (a(i) .ne. (0.0, 0.0)) then
       ss = ss + a(i)
     endif
  end do
end subroutine

program main
  implicit none
  integer*8 i,n
  parameter(n=10003)
  complex*8 a,ss
  real*4 r
  common/com1/a(n)
  common/com2/ss
  ss =0
  do i=1,n
     a(i) = cmplx(i-1, -(i-1))
  end do
  call sub(a, n)
  r = real(ss)
  r = abs((r - 50023828.0)/r)
  if (r > 0.0001) then
     print *, r
     print *, ss
     stop
  endif
  r = imag(ss)
  r = abs((r + 50023828.0)/r)
  if (r > 0.0001) then
     print *, r
     print *, ss
     stop
  endif
  print *, "PASS"
end program
