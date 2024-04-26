program main
  real(kind=4),dimension(64) :: a,b,c,res
  call init(a,b,c,res)
  print *, "OK"
end program main

subroutine init(a,b,c,res)
  real(kind=4),dimension(1:64) :: a,b,c,res

  do i=1,64
     a(i) = 0._4
     b(i) = real(i,kind=4)
     c(i) = real(i,kind=4)
     res(i) = real(i*2,kind=4)
  enddo
end subroutine init
