subroutine sub0()
  implicit none
  integer*4 i,n
  parameter(n=10003)
  complex*8 a,b,t
  common/com1/a(n)
  common/com2/b(n)
  !$omp simd private(t)
  do i=1,n
     t = b(i) + 2
!$omp ordered simd
     a(i) = t
!$omp end ordered
  end do
end subroutine

subroutine sub1()
  implicit none
  integer*4 i,n
  parameter(n=10003)
  complex*8 a,b,t
  common/com1/a(n)
  common/com2/b(n)
  !$omp simd
  do i=1,n
!$omp ordered simd
     t = a(i) + 1
!$omp end ordered
     a(i) = t
  end do
end subroutine

program main
  implicit none
  integer*4 n
  parameter(n=10003)
  complex*8 a,b
  common/com1/a(n)
  common/com2/b(n)
  b = 0
  call sub0
  call sub1
  if (a(1) .eq. 3 .and. a(n) .eq. 3) then
     print *, "PASS"
  else
     print *, a(1), a(n)
  endif
end program
