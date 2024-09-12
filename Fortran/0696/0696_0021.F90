program main
  real(8),dimension(1:64) :: a,c
  real(8),dimension(1:64,1:10) :: b
  real(8),dimension(1:64) :: res
  integer(4),dimension(1:64) :: xxx
  xxx = 2

  call init(a,b,c,res)
  call test1(a,b,c,64,10)
  call init(a,b,c,res)
  call test2(a,b,c,64,10)
  call init(a,b,c,res)
  call test3(a,b,c,64,10,xxx)
  call init(a,b,c,res)
  call test1_p(a,b,c,64,10)
  call init(a,b,c,res)
  call test2_p(a,b,c,64,10)
  call init(a,b,c,res)
  call test3_p(a,b,c,64,10,xxx)

  do i=1,64
     if(a(i) .ne. res(i)) then
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

subroutine test1(a,b,c,n,m)
  real(8),dimension(1:n) :: a,c
  real(8),dimension(1:n,1:m) :: b

  do j=1,m
     do i=1,n
        a(i) = a(i) + b(i,j) + c(i)
     enddo
  enddo

end subroutine test1

subroutine test2(a,b,c,n,m)
  real(8),dimension(1:n) :: a,c
  real(8),dimension(1:n,1:m) :: b

  do j=1,m
     do i=1,n
        a(i) = a(i) + b(i,j) + c(i)
     enddo
  enddo

end subroutine test2

subroutine test3(a,b,c,n,m,xxx)
  real(8),dimension(1:n) :: a,c
  real(8),dimension(1:n,1:m) :: b
  integer(4),dimension(1:n) :: xxx

  do j=1,m
     do i=1,n
        a(i) = a(i) + b(i,j) + c(i)
     enddo
  enddo

end subroutine test3

subroutine test1_p(a,b,c,n,m)
  real(8),dimension(1:n) :: a,c
  real(8),dimension(1:n,1:m) :: b

  do j=1,m
     do i=1,n
        a(i) = a(i) + b(i,j) + c(i)
     enddo
  enddo

end subroutine test1_p

subroutine test2_p(a,b,c,n,m)
  real(8),dimension(1:n) :: a,c
  real(8),dimension(1:n,1:m) :: b

  do j=1,m
     do i=1,n
        a(i) = a(i) + b(i,j) + c(i)
     enddo
  enddo

end subroutine test2_p

subroutine test3_p(a,b,c,n,m,xxx)
  real(8),dimension(1:n) :: a,c
  real(8),dimension(1:n,1:m) :: b
  integer(4),dimension(1:n) :: xxx

  do j=1,m
     do i=1,n
        a(i) = a(i) + b(i,j) + c(i)
     enddo
  enddo

end subroutine test3_p
