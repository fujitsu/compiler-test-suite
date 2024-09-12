module mod
  implicit none
  integer*8,parameter::n=10003
  real*4 a,b,s
  common/com1/a(n)
  common/com2/b(n)
contains
function my_fun(i)
!$omp declare simd linear(i:-1)
  implicit none
  integer*8,value :: i
  real*4 my_fun
  my_fun = b(i) + 2
end function
end module

subroutine sub(x)
  use mod
  implicit none
  integer*8 i
  real x(n)
  s = 0
  !$omp simd
  do i=n,1,-1
     x(i) = my_fun(i)
!$omp ordered simd
     s = s + 1
!$omp end ordered
  end do
  if (int(s) .ne. n) then
  print *,s
  endif
end subroutine

program main
  use mod
  implicit none
  b = 1
  call sub(a)
  if (a(1) .eq. 3 .and. a(n) .eq. 3) then
     print *, "PASS"
  else
     print *, a(1), a(n)
  endif
end program
