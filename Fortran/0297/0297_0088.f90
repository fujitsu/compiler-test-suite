program main
  integer, parameter :: n = 4
  real*8, dimension(n) :: x, a, b, c, d, e, f, g
  x = 0.0d0
  a = 1.0d0
  b = 2.0d0
  c = 3.0d0
  d = 4.0d0
  e = 5.0d0
  f = 6.0d0
  g = 7.0d0
  call test_pattern01(n, x, a, b, c, d, e, f, g)
  write(*,*) 'pattern01 :', x
  call test_pattern02(n, x, a, b, c, d, e, f, g)
  write(*,*) 'pattern02 :', x
  call test_pattern03(n, x, a, b, c, d, e, f, g)
  write(*,*) 'pattern03 :', x
  call test_pattern04(n, x, a, b, c, d, e, f, g)
  write(*,*) 'pattern04 :', x
  call test_pattern05(n, x, a, b, c, d, e, f, g)
  write(*,*) 'pattern05 :', x
  call test_pattern06(n, x, a, b, c, d, e, f, g)
  write(*,*) 'pattern06 :', x
  call test_pattern07(n, x, a, b, c, d, e, f, g)
  write(*,*) 'pattern07 :', x
  call test_pattern08(n, x, a, b, c, d, e, f, g)
  write(*,*) 'pattern08 :', x
  call test_pattern09(n, x, a, b, c, d, e, f, g)
  write(*,*) 'pattern09 :', x
  call test_pattern11(n, x, a, b, c, d, e, f, g)
  write(*,*) 'pattern11 :', x
  call test_pattern12(n, x, a, b, c, d, e, f, g)
  write(*,*) 'pattern12 :', x
  call test_pattern13(n, x, a, b, c, d, e, f, g)
  write(*,*) 'pattern13 :', x
  call test_pattern14(n, x, a, b, c, d, e, f, g)
  write(*,*) 'pattern14 :', x
  call test_pattern15(n, x, a, b, c, d, e, f, g)
  write(*,*) 'pattern15 :', x
  call test_pattern16(n, x, a, b, c, d, e, f, g)
  write(*,*) 'pattern16 :', x
  call test_pattern17(n, x, a, b, c, d, e, f, g)
  write(*,*) 'pattern17 :', x
  call test_pattern18(n, x, a, b, c, d, e, f, g)
  write(*,*) 'pattern18 :', x
  call test_pattern19(n, x, a, b, c, d, e, f, g)
  write(*,*) 'pattern19 :', x
  call test_pattern21(n, x, a, b, c, d, e, f, g)
  write(*,*) 'pattern21 :', x
  call test_pattern22(n, x, a, b, c, d, e, f, g)
  write(*,*) 'pattern22 :', x
  call test_pattern23(n, x, a, b, c, d, e, f, g)
  write(*,*) 'pattern23 :', x
  call test_pattern24(n, x, a, b, c, d, e, f, g)
  write(*,*) 'pattern24 :', x
  call test_pattern25(n, x, a, b, c, d, e, f, g)
  write(*,*) 'pattern25 :', x
  call test_pattern26(n, x, a, b, c, d, e, f, g)
  write(*,*) 'pattern26 :', x
  call test_pattern27(n, x, a, b, c, d, e, f, g)
  write(*,*) 'pattern27 :', x
  call test_pattern28(n, x, a, b, c, d, e, f, g)
  write(*,*) 'pattern28 :', x
  call test_pattern29(n, x, a, b, c, d, e, f, g)
  write(*,*) 'pattern29 :', x
contains
  subroutine test_pattern01(n, x, a, b, c, d, e, f, g)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f, g
    x = a + b * c - b * d
  end subroutine test_pattern01
  
  subroutine test_pattern02(n, x, a, b, c, d, e, f, g)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f, g
    x = a + b * c - b * d * e
  end subroutine test_pattern02
  
  subroutine test_pattern03(n, x, a, b, c, d, e, f, g)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f, g
    x = a + b * c - b * (d + e)
  end subroutine test_pattern03
  
  subroutine test_pattern04(n, x, a, b, c, d, e, f, g)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f, g
    x = a + b * c * d - b * e
  end subroutine test_pattern04
  
  subroutine test_pattern05(n, x, a, b, c, d, e, f, g)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f, g
    x = a + b * c * d - b * e * f
  end subroutine test_pattern05
  
  subroutine test_pattern06(n, x, a, b, c, d, e, f, g)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f, g
    x = a + b * c * d - b * (e + f)
  end subroutine test_pattern06
  
  subroutine test_pattern07(n, x, a, b, c, d, e, f, g)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f, g
    x = a + b * (c + d) - b * e
  end subroutine test_pattern07
  
  subroutine test_pattern08(n, x, a, b, c, d, e, f, g)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f, g
    x = a + b * (c + d) - b * e * f
  end subroutine test_pattern08
  
  subroutine test_pattern09(n, x, a, b, c, d, e, f, g)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f, g
    x = a + b * (c + d) - b * (e + f)
  end subroutine test_pattern09
  
  subroutine test_pattern11(n, x, a, b, c, d, e, f, g)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f, g
    x = a + b * c * d - b * c * e
  end subroutine test_pattern11
  
  subroutine test_pattern12(n, x, a, b, c, d, e, f, g)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f, g
    x = a + b * c * d - b * c * e * f
  end subroutine test_pattern12
  
  subroutine test_pattern13(n, x, a, b, c, d, e, f, g)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f, g
    x = a + b * c * d - b * c * (e + f)
  end subroutine test_pattern13
  
  subroutine test_pattern14(n, x, a, b, c, d, e, f, g)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f, g
    x = a + b * c * d * e - b * c * f
  end subroutine test_pattern14
  
  subroutine test_pattern15(n, x, a, b, c, d, e, f, g)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f, g
    x = a + b * c * d * e - b * c * f * g
  end subroutine test_pattern15
  
  subroutine test_pattern16(n, x, a, b, c, d, e, f, g)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f, g
    x = a + b * c * d * e - b * c * (f + g)
  end subroutine test_pattern16
  
  subroutine test_pattern17(n, x, a, b, c, d, e, f, g)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f, g
    x = a + b * c * (d + e) - b * c * f
  end subroutine test_pattern17
  
  subroutine test_pattern18(n, x, a, b, c, d, e, f, g)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f, g
    x = a + b * c * (d + e) - b * c * f * g
  end subroutine test_pattern18
  
  subroutine test_pattern19(n, x, a, b, c, d, e, f, g)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f, g
    x = a + b * c * (d + e) - b * c * (f + g)
  end subroutine test_pattern19

  subroutine test_pattern21(n, x, a, b, c, d, e, f, g)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f, g
    x = a + (b + c) * d - (b + c) * e
  end subroutine test_pattern21
  
  subroutine test_pattern22(n, x, a, b, c, d, e, f, g)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f, g
    x = a + (b + c) * d - (b + c) * e * f
  end subroutine test_pattern22
  
  subroutine test_pattern23(n, x, a, b, c, d, e, f, g)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f, g
    x = a + (b + c) * d - (b + c) * (e + f)
  end subroutine test_pattern23
  
  subroutine test_pattern24(n, x, a, b, c, d, e, f, g)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f, g
    x = a + (b + c) * d * e - (b + c) * f
  end subroutine test_pattern24
  
  subroutine test_pattern25(n, x, a, b, c, d, e, f, g)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f, g
    x = a + (b + c) * d * e - (b + c) * f * g
  end subroutine test_pattern25
  
  subroutine test_pattern26(n, x, a, b, c, d, e, f, g)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f, g
    x = a + (b + c) * d * e - (b + c) * (f + g)
  end subroutine test_pattern26
  
  subroutine test_pattern27(n, x, a, b, c, d, e, f, g)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f, g
    x = a + (b + c) * (d + e) - (b + c) * f
  end subroutine test_pattern27
  
  subroutine test_pattern28(n, x, a, b, c, d, e, f, g)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f, g
    x = a + (b + c) * (d + e) - (b + c) * f * g
  end subroutine test_pattern28
  
  subroutine test_pattern29(n, x, a, b, c, d, e, f, g)
    integer, intent(in) :: n
    real*8, dimension(n), intent(out) :: x
    real*8, dimension(n), intent(in) :: a, b, c, d, e, f, g
    x = a + (b + c) * (d + e) - (b + c) * (f + g)
  end subroutine test_pattern29
end program main
