subroutine sub0()
  implicit none
  integer*8 i,n
  parameter(n=10003)
  integer*4 a,b
  common/com1/a(n)
  common/com2/b(n)
  !$omp simd
  do i=1,n
!$omp ordered simd
!$omp end ordered
     a(i) = b(i) + 2
  end do
end subroutine

subroutine sub1()
  implicit none
  integer*8 i,n
  parameter(n=10003)
  integer*4 a,b
  common/com1/a(n)
  common/com2/b(n)
  !$omp simd
  do i=1,n
!$omp ordered simd
     call empty
!$omp end ordered
     a(i) = a(i) + 1
  end do
end subroutine

program main
  implicit none
  integer*8 n
  parameter(n=10003)
  integer*4 a,b
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

subroutine empty
end