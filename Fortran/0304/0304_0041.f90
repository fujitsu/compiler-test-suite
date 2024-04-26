program main
  integer, parameter :: n = 31
  real*8, dimension(n) :: x, y, a, b, c
  call init(n, x, y, a, b, c)
  call foo(n, x, y, a, b, c)
  call print(n, x, y)
contains
  subroutine init(n, x, y, a, b, c)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x, y, a, b, c
    integer :: i
    do i=1, n
       x(i) = dble(i)
       y(i) = dble(i)
       a(i) = dble(3*i-1)
       b(i) = dble(4*i-1)
       c(i) = dble(5*i-1)
    end do
  end subroutine init

  subroutine foo(n, x, y, a, b, c)
    integer, intent(in) :: n
    real*8, dimension(n), intent(inout) :: x, y
    real*8, dimension(n), intent(in)  :: a, b, c
    real*8 :: t1, t2
    do i=1, n-3
       t1 = a(i) + b(i)
       t2 = a(i+1) + b(i+1)
       x(i)   = x(i)   - t2 * c(i)
       x(i+1) = x(i+1) - t1 * c(i+1)
       y(i)   = y(i)   - t1 * c(i)
       y(i+1) = y(i+1) - t2 * c(i+3)
    end do
  end subroutine foo

  subroutine print(n, x, y)
    integer, intent(in) :: n
    real*8, dimension(n), intent(in) :: x, y
    integer :: i
    do i=1, n-1
       write(*,*) 'x(',i,') =', x(i)
       write(*,*) 'y(',i,') =', y(i)
    end do
  end subroutine print
end program main
