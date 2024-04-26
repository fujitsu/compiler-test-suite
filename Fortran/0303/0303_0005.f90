program main
  real*4 :: x = 2.0 ** 32
  real*8 :: y = 2.0 ** 64
  write(*,*) anint(x), dnint(y)
end program main
