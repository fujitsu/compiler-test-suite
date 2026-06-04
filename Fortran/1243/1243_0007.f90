module m1
  integer, parameter :: dp = kind(0.d0)
  real(dp), allocatable :: dr(:, :, :)
contains
  subroutine s1
    implicit none
    integer :: a,b,c
    do concurrent (c = 1:3)
       dr(c, c, c) = 1.0
       do concurrent (a = 1:3, a /= c)
          dr(a, c, c) = 3.0
          do concurrent (b = a+1:3, b /= c)
             dr(a, b, c) = 4.0
          end do
       end do
    end do
    if (dr(2,2,2) /= 1.0) print *,101
  end subroutine s1
end module m1
program main
  use m1
  allocate (dr(3, 3, 3))
  call s1
  print *,'sngp016 : pass'
end program main
