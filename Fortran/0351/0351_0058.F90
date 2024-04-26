program main
  real(kind=8),dimension(64) :: a,res
  real(kind=4),dimension(64) :: b,c
  call init(a,b,c,res)
  do i=1,2
     call test(a,b,c)
  enddo
  do i=1,64
     if(a(i) .ne. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,c,res)
  real(kind=8),dimension(1:64) :: a,res
  real(kind=4),dimension(1:64) :: b,c

  do i=1,64
     a(i) = 0._4
     b(i) = real(i,kind=4)
     c(i) = real(i,kind=4)
     res(i) = real(i*i,kind=8)
  enddo
end subroutine init


subroutine test(a,b,c)
  real(kind=8), dimension(64) :: a
  real(kind=4), dimension(64) :: b,c

  do i=1,64
     a(i) = dprod(b(i),c(i))
  enddo
end subroutine test
