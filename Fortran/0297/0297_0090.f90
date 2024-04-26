program main
  integer, parameter :: n = 4
  real*8, dimension(n) :: x, a, b, c, d, e
  x = 0.0d0
  a = 1.0d0
  b = 2.0d0
  c = 3.0d0
  d = 4.0d0
  e = 5.0d0
  call test_pattern01(n, x, a, b, c, d, e)
  write(*,*) 'pattern01 :', x
  call test_pattern02(n, x, a, b, c, d, e)
  write(*,*) 'pattern02 :', x
  call test_pattern03(n, x, a, b, c, d, e)
  write(*,*) 'pattern03 :', x
  call test_pattern11(n, x, a, b, c, d, e)
  write(*,*) 'pattern11 :', x
  call test_pattern12(n, x, a, b, c, d, e)
  write(*,*) 'pattern12 :', x
  call test_pattern13(n, x, a, b, c, d, e)
  write(*,*) 'pattern13 :', x
  call test_pattern21(n, x, a, b, c, d, e)
  write(*,*) 'pattern21 :', x
  call test_pattern22(n, x, a, b, c, d, e)
  write(*,*) 'pattern22 :', x
  call test_pattern23(n, x, a, b, c, d, e)
  write(*,*) 'pattern23 :', x
contains
  subroutine test_pattern01(n, x, a, b, c, d, e)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e
    x = a + b - b * c
  end subroutine test_pattern01
  
  subroutine test_pattern02(n, x, a, b, c, d, e)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e
    x = a + b - b * c * d
  end subroutine test_pattern02
  
  subroutine test_pattern03(n, x, a, b, c, d, e)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e
    x = a + b - b * (c + d)
  end subroutine test_pattern03
  
  subroutine test_pattern11(n, x, a, b, c, d, e)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e
    x = a + b * c - b * c * d
  end subroutine test_pattern11
  
  subroutine test_pattern12(n, x, a, b, c, d, e)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e
    x = a + b * c - b * c * d * e
  end subroutine test_pattern12
  
  subroutine test_pattern13(n, x, a, b, c, d, e)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e
    x = a + b * c - b * c * (d + e)
  end subroutine test_pattern13
  
  subroutine test_pattern21(n, x, a, b, c, d, e)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e
    x = a + (b + c) - (b + c) * d
  end subroutine test_pattern21
  
  subroutine test_pattern22(n, x, a, b, c, d, e)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e
    x = a + (b + c) - (b + c) * d * e
  end subroutine test_pattern22
  
  subroutine test_pattern23(n, x, a, b, c, d, e)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e
    x = a + (b + c) - (b + c) * (d + e)
  end subroutine test_pattern23
end program main
