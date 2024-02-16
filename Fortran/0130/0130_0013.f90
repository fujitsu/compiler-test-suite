subroutine test1(a,b,c,res1,x,y,z,res2,n)
  real(8),dimension(n) :: a,b,c,res1
  real(8),dimension(n) :: x,y,z,res2
  do i=1, n
     res1(i) = a(i) + b(i) + c(i)
     res2(i) = x(i) + y(i) + z(i)
  end do
end subroutine test1

subroutine test2(a,b,c,res1,x,y,z,res2,n)
  real(8),dimension(n) :: a,b,c,res1
  real(8),dimension(n) :: x,y,z,res2
  do i=1, n
     res1(i) = a(i) + b(i) + c(i)
     res2(i) = x(i) + y(i) + z(i)
  end do
end subroutine test2

subroutine test2b(a,b,c,res1,x,y,z,res2,n)
  real(8),dimension(n) :: a,b,c,res1
  real(8),dimension(n) :: x,y,z,res2
  do i=1, n
     res1(i) = a(i) + b(i) + c(i)
     res2(i) = x(i) + y(i) + z(i)
  end do
end subroutine test2b

subroutine test3(a,b,c,res1,x,y,z,res2,n)
  real(8),dimension(n) :: a,b,c,res1
  real(8),dimension(n) :: x,y,z,res2
  do i=1, n
     res1(i) = a(i) + b(i) + c(i)
     res2(i) = x(i) + y(i) + z(i)
  end do
end subroutine test3

subroutine test4(a,b,c,res1,x,y,z,res2,n)
  real(8),dimension(n) :: a,b,c,res1
  real(8),dimension(n) :: x,y,z,res2
  do i=1, n
     res1(i) = a(i) + b(i) + c(i)
     res2(i) = x(i) + y(i) + z(i)
  end do
end subroutine

subroutine test5(a,b,c,res1,x,y,z,res2,n)
  real(8),dimension(n) :: a,b,c,res1
  real(8),dimension(n) :: x,y,z,res2
  do i=1, n
     res1(i) = a(i) + b(i) + c(i)
     res2(i) = x(i) + y(i) + z(i)
  end do
end subroutine test5

subroutine test6(a,b,c,res1,x,y,z,res2,n)
  real(8),dimension(n) :: a,b,c,res1
  real(8),dimension(n) :: x,y,z,res2
  do i=1, n
     res1(i) = a(i) + b(i) + c(i)
     res2(i) = x(i) + y(i) + z(i)
  end do
end subroutine test6

program main
  integer,parameter :: n=1000
  real(8),dimension(n) :: a,b,c,res1
  real(8),dimension(n) :: x,y,z,res2

  call init(a,b,c,res1,x,y,z,res2,n)
  call test1(a,b,c,res1,x,y,z,res2,n)
  call result(res1,res2,n)

  call init(a,b,c,res1,x,y,z,res2,n)
  call test2(a,b,c,res1,x,y,z,res2,n)
  call result(res1,res2,n)

  call init(a,b,c,res1,x,y,z,res2,n)
  call test2b(a,b,c,res1,x,y,z,res2,n)
  call result(res1,res2,n)

  call init(a,b,c,res1,x,y,z,res2,n)
  call test3(a,b,c,res1,x,y,z,res2,n)
  call result(res1,res2,n)

  call init(a,b,c,res1,x,y,z,res2,n)
  call test4(a,b,c,res1,x,y,z,res2,n)
  call result(res1,res2,n)

  call init(a,b,c,res1,x,y,z,res2,n)
  call test5(a,b,c,res1,x,y,z,res2,n)
  call result(res1,res2,n)

  call init(a,b,c,res1,x,y,z,res2,n)
  call test6(a,b,c,res1,x,y,z,res2,n)
  call result(res1,res2,n)

end program main

subroutine init(a,b,c,res1,x,y,z,res2,n)
  real(8),dimension(n) :: a,b,c,res1
  real(8),dimension(n) :: x,y,z,res2
  do i=1,n
     a(i) = i
     b(i) = i+n
     c(i) = i+n*2
     x(i) = i
     y(i) = i+n
     z(i) = i+n*2
     res1(i) = 0
     res2(i) = 0
  enddo
end subroutine init

subroutine result(res1,res2,n)
  real(8),dimension(n) :: res1, res2
  print *, res1(1), res1(2), res1(n/2), res1(n-1), res1(n)
  print *, res2(1), res2(2), res2(n/2), res2(n-1), res2(n)
end subroutine result
