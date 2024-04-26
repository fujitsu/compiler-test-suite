program main
  real(kind=8),dimension(64) :: a,b,c,res
  call init(a,b,c,res,64)
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

subroutine init(a,b,c,res,n1)
  real(kind=8),dimension(1:n1) :: a,b,c,res

  do i=1,n1
     a(i) = 0._8
     b(i) = real(i,kind=8)
     c(i) = real(i,kind=8)
     res(i) = real(i*2,kind=8)
  enddo
end subroutine init


subroutine test(a,b,c)
  real(kind=8), dimension(64) :: a,b,c

  do i=1,64
     a(i) = b(i) + c(i)
  enddo
end subroutine test
