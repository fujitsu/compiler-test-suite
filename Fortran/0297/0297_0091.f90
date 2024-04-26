program main
  integer, parameter :: n = 4
  real*8, dimension(n) :: x, a, b, c, d, e, f
  x = 0.0d0
  a = 1.0d0
  b = 2.0d0
  c = 3.0d0
  d = 4.0d0
  e = 5.0d0
  f = 6.0d0
  call test_pattern01(n, x, a, b, c, d, e, f)
  write(*,*) 'pattern01 :', x
  call test_pattern02(n, x, a, b, c, d, e, f)
  write(*,*) 'pattern02 :', x
  call test_pattern03(n, x, a, b, c, d, e, f)
  write(*,*) 'pattern03 :', x
  call test_pattern04(n, x, a, b, c, d, e, f)
  write(*,*) 'pattern04 :', x
  call test_pattern11(n, x, a, b, c, d, e, f)
  write(*,*) 'pattern11 :', x
  call test_pattern12(n, x, a, b, c, d, e, f)
  write(*,*) 'pattern12 :', x
  call test_pattern13(n, x, a, b, c, d, e, f)
  write(*,*) 'pattern13 :', x
  call test_pattern14(n, x, a, b, c, d, e, f)
  write(*,*) 'pattern14 :', x
contains
  subroutine test_pattern01(n, x, a, b, c, d, e, f)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f
    x = a * b * c - a * c * b
  end subroutine test_pattern01
  
  subroutine test_pattern02(n, x, a, b, c, d, e, f)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f
    x = a * b * (c + d) - a * (c + d) * b
  end subroutine test_pattern02
  
  subroutine test_pattern03(n, x, a, b, c, d, e, f)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f
    x = a * (b + d) * c - a * c * (b + d)
  end subroutine test_pattern03
  
  subroutine test_pattern04(n, x, a, b, c, d, e, f)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f
    x = a * (b + d) * (c + e) - a * (c + e) * (b + d)
  end subroutine test_pattern04
  
  subroutine test_pattern11(n, x, a, b, c, d, e, f)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f
    x = (a + f) * b * c - (a + f) * c * b
  end subroutine test_pattern11
  
  subroutine test_pattern12(n, x, a, b, c, d, e, f)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f
    x = (a + f) * b * (c + d) - (a + f) * (c + d) * b
  end subroutine test_pattern12
  
  subroutine test_pattern13(n, x, a, b, c, d, e, f)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f
    x = (a + f) * (b + d) * c - (a + f) * c * (b + d)
  end subroutine test_pattern13
  
  subroutine test_pattern14(n, x, a, b, c, d, e, f)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f
    x = (a + f) * (b + d) * (c + e) - (a + f) * (c + e) * (b + d)
  end subroutine test_pattern14
end program main
