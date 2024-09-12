subroutine red(a, i, ss)
  implicit none
  integer*8, intent(in):: i
  complex*8 a(*),ss
  ss = ss + a(i)
end
subroutine sub(a, n, ss)
  implicit none
  interface
     subroutine red(a, i, ss)
       implicit none
       integer*8, intent(in):: i
       complex*8 a(*),ss
     end subroutine red
  end interface
  integer*8 i,n
  complex*8 a(n),ss
  !$omp simd reduction(+:ss)
  do i=1,n
     call red(a, i, ss)
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
     a(i) = cmplx(i, -i)
  end do
  call sub(a, n, ss)
  r = real(ss)
  if (abs((r - 50032900.0)/r) > 0.0001) then
     print *, ss
     stop
  endif
  r = imag(ss)
  if (abs((r + 50032900.0)/r) > 0.0001) then
     print *, ss
     stop
  endif
  print *, "PASS"
end program
