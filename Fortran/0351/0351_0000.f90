program main
  integer, parameter :: n = 134
  real*4,  parameter :: rpinf = z'7F800000'
  real*4,  parameter :: rpnan = z'7FC00000'
  real*4,  parameter :: rminf = z'FF800000'
  real*4,  parameter :: rmnan = z'FFC00000'
  real*8,  parameter :: dpinf = z'7FF0000000000000'
  real*8,  parameter :: dpnan = z'7FFFFFFFFFFFFFFF'
  real*8,  parameter :: dminf = z'FFF0000000000000'
  real*8,  parameter :: dmnan = z'FFFFFFFFFFFFFFFF'
  real*4,  dimension(n) :: r
  real*8,  dimension(n) :: d
  integer, dimension(n) :: x, y
  integer :: i
  interface
    subroutine floor_noinline_r4(n, r, x)
      integer, intent(in) :: n
      real*4, dimension(n), intent(in) :: r
      integer, dimension(n), intent(out) :: x
    end subroutine floor_noinline_r4
    subroutine floor_noinline_r8(n, r, x)
      integer, intent(in) :: n
      real*8, dimension(n), intent(in) :: r
      integer, dimension(n), intent(out) :: x
    end subroutine floor_noinline_r8
  end interface
  
  do i=1, 32
     r(4*i-3) = - ( real( 2**i - 1 ) )
     r(4*i-2) = - ( real( 2**i - 1 ) + 1.5 )
     r(4*i-1) = real( 2**i - 1 )
     r(4*i)   = real( 2**i - 1 ) + 1.5
     d(4*i-3) = - ( dble( 2**i - 1 ) )
     d(4*i-2) = - ( dble( 2**i - 1 ) + 1.5d0 )
     d(4*i-1) = dble( 2**i - 1 )
     d(4*i)   = dble( 2**i - 1 ) + 1.5d0
  end do
  r(129) = 0.0
  d(129) = 0.0d0
  r(130) = -0.0
  d(130) = -0.0d0
  r(131) = rpinf
  d(131) = dpinf
  r(132) = rminf
  d(132) = dminf
  r(133) = rpnan
  d(133) = dpnan
  r(134) = rmnan
  d(134) = dmnan
  call floor_inline_r4(n, r, x)
  call floor_noinline_r4(n, r, y)
  do i=1, n
     if ( x(i) .ne. y(i) ) then
         write(*,*) 'NG : floor(', r(i), ' ) =', x(i), y(i)
     endif
  end do
  call floor_inline_r8(n, d, x)
  call floor_noinline_r8(n, d, y)
  do i=1, n
     if ( x(i) .ne. y(i) ) then
         write(*,*) 'NG : floor(', d(i), ' ) =', x(i), y(i)
     endif
  end do
  write(*,*) 'OK'
contains
  subroutine floor_inline_r4(n, r, x)
    integer, intent(in) :: n
    real*4, dimension(n), intent(in) :: r
    integer, dimension(n), intent(out) :: x
    x = floor(r)
  end subroutine floor_inline_r4
  
  subroutine floor_inline_r8(n, d, x)
    integer, intent(in) :: n
    real*8, dimension(n), intent(in) :: d
    integer, dimension(n), intent(out) :: x
    x = floor(d)
  end subroutine floor_inline_r8
end program main

subroutine floor_noinline_r4(n, r, x)
  integer, intent(in) :: n
  real*4, dimension(n), intent(in) :: r
  integer, dimension(n), intent(out) :: x
  x = floor(r)
end subroutine floor_noinline_r4

subroutine floor_noinline_r8(n, d, x)
  integer, intent(in) :: n
  real*8, dimension(n), intent(in) :: d
  integer, dimension(n), intent(out) :: x
  x = floor(d)
end subroutine floor_noinline_r8
