module mod
  implicit none
  integer, parameter :: N = 1000
  integer*8 input(N,N)
  integer*8 output(N)
!$omp threadprivate(input)
!$omp threadprivate(output)
contains
  subroutine add_loop(n, x, y)
    implicit none
    integer i,j
    integer*8 s, nn
    integer, intent(in) :: n
    integer*8,  intent(in) :: x(n,n)
    integer*8,  intent(out) :: y(n)
    nn = n
!$omp parallel do copyin(input) private(s) firstprivate(nn)
    do i=1,n
      s = 0
!$omp simd reduction(+:s)
      do j=1,nn
         s = s + x(j,i)
      end do
      y(i) = s
    end do
  end subroutine add_loop
end module mod

subroutine init(n, p)
  implicit none
  integer i,j
  integer, intent(in) :: n
  integer*8,  intent(out) :: p(n,n)
  do i=1,n
    do j=1,n
      p(j,i) = i*N+j
    end do
  end do
end subroutine init

subroutine check(n, p, input)
  implicit none
  integer i,j
  integer*8 s
  integer, intent(in) :: n
  integer*8,  intent(in) :: p(n)
  integer*8,  intent(in) :: input(n,n)
  do i=1,n
    s = 0
    do j=1,n
       s = s + input(j,i)
    end do
    if (p(i) /= s) then
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
  call check(N, output, input)
end program main

