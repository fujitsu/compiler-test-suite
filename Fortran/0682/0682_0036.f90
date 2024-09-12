module test
  integer*4,parameter:: n=10003
  real*8 ss
contains
  recursive subroutine sub()
    implicit none
    integer*4 i
    real*8 a(n)
    call init(a, n)
    !$omp simd lastprivate(ss)
    do i=1,n
       call foo(ss,a(i))
    end do
  end subroutine sub
end module test

subroutine foo(ss, a)
  real*8 , intent(in) :: a
  real*8   ss
1 format(1h ,z16.16)
  ss = a
end subroutine foo

subroutine init(a, n)
  implicit none
  integer*4 i
  integer*4 n
  real*8 a(n)
  do i=1,n
     a(i) = i
  end do
end subroutine init

program main
  use test
  implicit none
  call sub()
  if (ss .eq. n) then
     print *, "PASS"
  else
     print *, ss
  endif
end program main
