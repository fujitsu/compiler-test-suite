subroutine sub(a)
  implicit none
  integer*8 i,n
  parameter(n=7)
  integer*4 a(n),ss
  common/com2/ss
  !$omp simd reduction(+:ss)
  do i=1,n
     ss = ss + a(i)
!$omp ordered simd
     a(i) = a(i) + 1
!$omp end ordered
  end do
end subroutine

program main
  implicit none
  integer*8 i,n
  parameter(n=7)
  integer*4 a,ss
  common/com1/a(n)
  common/com2/ss
  ss =0
  do i=1,n
     a(i) = i
  end do
  call sub(a)
  if (ss .eq. 28) then
     print *, "PASS"
  else
     print *, a, ss
  endif
end program
