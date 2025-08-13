module mod2

contains

  real*8 function func(x) result(y)

    implicit none
    real*8, dimension(:), pointer :: x

    write(29, *) 'X(1) = ', x(1)

    y = x(1)**2

  end function func

end module mod2
module mod1

contains

  subroutine test_func(f, a, b)

    implicit none

    real*8, dimension(:), pointer :: a, b
    interface
  real*8 function f(x) result(y)

    implicit none
    real*8, dimension(:), pointer :: x

  end function f
    end interface

    real*8 :: x, y

    write(29, *) 'BEGIN test: '
    write(29, *) 'a = ', a(1), a(2)
    write(29, *) 'b = ', b(1), b(2)

    x = f(a)
    y = f(b)

    write(29, *) 'END test: ',x, y

  end subroutine test_func

end module mod1
program main

  use mod1
  use mod2

  implicit none

  real*8, dimension(:), pointer :: a, b
  real*8 :: t

  allocate(a(2), b(2))
  a(1) = 12.d0
  a(2) = 13.d0
  b(1) = 14.d0
  b(2) = 15.d0

  call test_func(func, a, b)

print *,'pass'
end program main
