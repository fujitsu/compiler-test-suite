module mod
  implicit none
  integer*8,parameter::n=10003
  integer*8 a,b
  common/com1/a(n)
  common/com2/b(n)
contains
function my_fun_uval(x) result(my_fun)
  implicit none
!$omp declare simd linear(uval(x))
  integer*8,intent(in):: x
  integer*4 my_fun
  my_fun = x + 2
end function my_fun_uval
end module

recursive subroutine sub()
  use mod
  implicit none
  integer*8 i,s
  s = 0
  !$omp simd
  do i=1,n
!$omp ordered simd
     s = s + 1
!$omp end ordered
     b(1) = i
     a(i) = my_fun_uval(b(1))
  end do
  if (s .ne. n) then
  print *,s
  stop
  endif
end subroutine

program main
  use mod
  implicit none
  b = 1
  call sub
  if (a(1) .eq. 1+2 .and. a(n) .eq. n+2) then
     print *, "PASS"
  else
     print *, a(1), a(n)
  endif
end program
