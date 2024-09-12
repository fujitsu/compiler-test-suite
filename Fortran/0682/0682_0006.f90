subroutine sub0()
  implicit none
  integer*8 i,n
  parameter(n=10003)
  integer*4 a,b,t
  logical*4 m
  common/com0/m(n)
  common/com1/a(n)
  common/com2/b(n)
  !$omp simd
  do i=1,n
     if (m(i)) then
     t = b(i) + 2
     endif
!$omp ordered simd
     a(i) = t
!$omp end ordered
  end do
end subroutine

subroutine sub1()
  implicit none
  integer*8 i,n
  parameter(n=10003)
  integer*4 a,b,t
  logical*4 m
  common/com0/m(n)
  common/com1/a(n)
  common/com2/b(n)
  !$omp simd
  do i=1,n
!$omp ordered simd
     if (m(i)) then
     t = a(i) + 1
     endif
!$omp end ordered
     a(i) = t
  end do
end subroutine

program main
  implicit none
  integer*8 n
  parameter(n=10003)
  integer*4 a,b
  logical*4 m
  common/com0/m(n)
  common/com1/a(n)
  common/com2/b(n)
  m = .true.
  b = 0
  call sub0
  call sub1
  if (a(1) .eq. 3 .and. a(n) .eq. 3) then
     print *, "PASS"
  else
     print *, a(1), a(n)
  endif
end program
