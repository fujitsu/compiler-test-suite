subroutine sub(a, n)
  implicit none
  integer*8 i,n
  integer*4 a(n),ss
  common/com2/ss
  !$omp simd reduction(+:ss)
  do i=1,n
     a(i) = a(i) + 1
!$omp ordered simd
     ss = ss + a(i)
!$omp end ordered
  end do
end subroutine

program main
  implicit none
  integer*8 i,n
  parameter(n=10003)
  integer*4 a,ss
  common/com1/a(n)
  common/com2/ss
  ss =0
  do i=1,n
     a(i) = i-1
  end do
  call sub(a, n)
  if (ss .eq. 50035006) then
     print *, "PASS"
  else
     print *, ss
  endif
end program
