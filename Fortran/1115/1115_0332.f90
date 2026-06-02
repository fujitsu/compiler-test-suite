module mod
  implicit none
  integer, parameter :: N = 1000
  real*8 input(N)
  real*8 output(N)
!$omp threadprivate(input)
!$omp threadprivate(output)
contains
  subroutine add_loop(n, x, y)
    implicit none
    integer i
    integer, intent(in) :: n
    real*8,  intent(in) :: x(n)
    real*8,  intent(out) :: y(n)
!$omp parallel do simd copyin(input)
    do i=1,n
       y(i) = x(i) + 1.0
    end do
  end subroutine add_loop
end module mod

subroutine init(n, p)
  implicit none
  integer i
  integer, intent(in) :: n
  real*8,  intent(out) :: p(n)
  do i=1,n
     p(i) = i
  end do
end subroutine init

subroutine check(n, p)
  implicit none
  integer i
  integer, intent(in) :: n
  real*8,  intent(in) :: p(n)
  do i=1,n
     if (p(i) /= real(i,8) + 1.0) then
        print *,"NG",i,p(i)
        stop
     end if
  end do
  print *,"PASS"
end subroutine check

program main
  use mod
  implicit none
  call init(N, input)
  call add_loop(N, input, output)
  call check(N, output)
end program main

