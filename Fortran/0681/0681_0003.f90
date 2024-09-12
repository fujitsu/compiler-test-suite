!
!
module mod
  integer*8 n
  parameter(n=10003)
  integer*8, allocatable, dimension(:) :: a
  real*4, allocatable, dimension(:):: b
end module
!
!
integer*8 function fun(arg)
  implicit none
  !$omp declare simd
  real*4:: arg
  fun = arg + 3
end function fun
!
subroutine sub()
  use mod
  implicit none
  integer*8 i
  interface
  integer*8 function fun(arg)
    !$omp declare simd
    real*4:: arg
    end function fun
  end interface
  !$omp simd
  do i=1,n
     a(i) = fun(b(i))
  end do
end subroutine sub

program main
  use mod
  implicit none
  integer*8 i
  allocate (a(n), b(n))
  do i=1,n
     a(i) = 0
     b(i) = i
  end do
  call sub
  if (a(1) .eq. 4 .and. a(n) .eq. 10006) then
     print *, "PASS"
  else
     print *, a(1), a(n)
  endif
end program main
