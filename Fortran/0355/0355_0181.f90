program main
  real*8 total1
  real*4 a
  data total1/0/,a/1/

  call init(a)
  do i=1,100
     total1 = total1 + a
  enddo
  print*, total1
  stop
end program main

subroutine init(a)
  real*4 a
  a = 10
end subroutine init
