subroutine sub(a, n, ss)
  implicit none
  integer*8 i,n
  complex*16 a(n),ss
  !$omp simd reduction(+:ss)
  do i=1,n
     ss = ss + a(i)
  end do
end subroutine

program main
  implicit none
  integer*8 i,n
  parameter(n=10003)
  complex*16 a,ss
  common/com1/a(n)
  common/com2/ss
  ss =0
  do i=1,n
     a(i) = i
  end do
  call sub(a, n, ss)
  if (ss .eq. 50035006.0_8) then
     print *, "PASS"
  else
     print *, ss
  endif
end program
