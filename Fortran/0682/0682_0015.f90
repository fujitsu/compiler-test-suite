module mod
  implicit none
  integer*8,parameter::n=10003
  integer*4 a,b,s
  common/com1/a(n)
  common/com2/b(n)
contains
function my_fun_ref(x) result(my_fun)
  implicit none
!$omp declare simd linear(ref(x))
  integer*4:: x
  integer*4 my_fun
  my_fun = x + 2
end function my_fun_ref
function my_fun_none(x) result(my_fun)
  implicit none
!$omp declare simd linear(x)
  integer*4:: x
  integer*4 my_fun
  my_fun = x + 2
end function
function my_fun_val(x) result(my_fun)
  implicit none
!$omp declare simd linear(val(x))
  integer*4:: x
  integer*4 my_fun
  my_fun = x + 2
end function
end module

recursive subroutine sub()
  use mod
  implicit none
  integer*8 i
  s = 0
  !$omp simd
  do i=1,n
     a(i) = my_fun_ref(b(i))
!$omp ordered simd
     s = s + 1
!$omp end ordered
  end do
  if (int(s) .ne. n) then
  print *,s
  endif
  s = 0
  !$omp simd
  do i=1,n
     a(i) = my_fun_none(b(i))
!$omp ordered simd
     s = s + 1
!$omp end ordered
  end do
  if (int(s) .ne. n) then
  print *,s
  endif
  s = 0
  !$omp simd
  do i=1,n
     a(i) = my_fun_val(b(i))
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
  call sub
  if (a(1) .eq. 3 .and. a(n) .eq. 3) then
     print *, "PASS"
  else
     print *, a(1), a(n)
  endif
end program
