subroutine sub()
  implicit none
  integer*8 i,n
  parameter(n=10003)
  real*4 a
  type TAG
    sequence
    real*8 x(2)
  end type
  type(TAG) b,t
  common/com1/a(n)
  common/com2/b(n)
  !$omp simd
  do i=1,n
     a(i) = a(i) + 1
     t = TAG(2)
!$omp ordered simd
     b(i) = t
!$omp end ordered
  end do
end subroutine

program main
  implicit none
  integer*8 n
  parameter(n=10003)
  real*4 a
  type TAG
    sequence
    real*8 x(2)
  end type
  type(TAG) b
  common/com1/a(n)
  common/com2/b(n)
  a = 0
  call sub
  if (a(1) .eq. 1 .and. b(1)%x(1) .eq. 2) then
     print *, "PASS"
  else
     print *, a(1), a(n)
  endif
end program
