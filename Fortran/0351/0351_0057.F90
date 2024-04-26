program main
  real(kind=8),dimension(64) :: a,b,c,res
  call init(a,b,c,res,64)
  do i=1,2
     call test(a,b,c)
  enddo
  do i=1,64
     if(((abs(a(i) -  res(i))/abs(a(i))) .gt. 1.0D-13)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,c,res,n1)
  real(kind=8),dimension(1:n1) :: a,b,c,res

  do i=1,n1
     a(i) = 0._4
     b(i) = real(i,kind=8)
     c(i) = 2._4
     res(i) = real(i,kind=8)/2_4
  enddo
end subroutine init


subroutine test(a,b,c)
  real(kind=8), dimension(64) :: a,b,c

  do i=1,64
     a(i) = b(i) / c(i)
  enddo
end subroutine test
