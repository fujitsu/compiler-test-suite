program main
  implicit none
  integer, parameter :: dp = kind(0.d0)
  integer :: a,b,c
  real(dp), allocatable :: dr(:, :, :)
  allocate (dr(3, 3, 3))
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
  print *,'sngp001 : pass'
end program main
