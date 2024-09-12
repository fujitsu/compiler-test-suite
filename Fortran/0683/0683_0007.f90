module mod
contains
real function fun(r)
!$omp declare simd
  implicit none
  real,intent(in)::r
  fun = r + 3.0
end function
end module

subroutine test(p)
  use mod
  implicit none
  integer*8 i,n
  parameter(n=10000)
  real*4 a,b
  common/com1/a(n)
  pointer(p, b)
  !$omp simd
  do i=1,n
     a(i) = fun(b)
     p = p + 4
  end do
end subroutine

program main
  implicit none
  integer*8 n
  parameter(n=10000)
  real*4 a,b
  common/com1/a(n)
  common/com2/b(n)
  a = 0
  b = 0
  call test(loc(b))
  if (a(1) .eq. 3 .and. a(n) .eq. 3) then
     print *, "PASS"
  else
     print *, 'NG', a(1), a(n)
  endif
end program
