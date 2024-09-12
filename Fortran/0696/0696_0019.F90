program main
  real(8),dimension(1:64) :: a,c
  real(8),dimension(1:64,1:10) :: b
  real(8),dimension(1:64) :: res
  real(8),dimension(1:64) :: x,z,x2,z2
  real(8),dimension(1:64,1:10) :: y,y2
  real(8),dimension(1:64) :: res2,res3

  call init(a,b,c,res)
  call init(x,y,z,res2)
  call init(x2,y2,z2,res3)
  call test(a,b,c,64,10,x,y,z,x2,y2,z2)

  do i=1,64
     if(a(i) .ne. res(i)) then
        print *, "NG"
     endif
     if(x(i) .ne. res2(i)) then
        print *, "NG"
     endif
     if(x2(i) .ne. res3(i)) then
        print *, "NG"
     endif
  enddo

  print *, "OK"
end program main

subroutine init(a,b,c,res)
  real(8),dimension(1:64) :: a,c
  real(8),dimension(1:64,1:10) :: b
  real(8),dimension(1:64) :: res

  do i=1,64
     a(i) = 0_8
     c(i) = 1_8
     res(i) = 0_8
  enddo
  do j=1,10
  do i=1,64
     b(i,j) = i+j
     res(i) = res(i) + b(i,j) + c(i)
  enddo
  enddo
end subroutine init

subroutine test(a,b,c,n,m,x,y,z,x2,y2,z2)
  real(8),dimension(1:n) :: a,c
  real(8),dimension(1:n,1:m) :: b
  real(8),dimension(1:n) :: x,z,x2,z2
  real(8),dimension(1:n,1:m) :: y,y2

  do j=1,m
     do i=1,n
        a(i) = a(i) + b(i,j) + c(i)
     enddo
  enddo

  do j=1,m
     do i=1,n
        x2(i) = x2(i) + y2(i,j) + z2(i)
     enddo
  enddo

  do j=1,m
     do i=1,n
        x(i) = x(i) + y(i,j) + z(i)
     enddo
  enddo

end subroutine test
