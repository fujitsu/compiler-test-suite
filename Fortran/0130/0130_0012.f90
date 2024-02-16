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

subroutine test3b(a,b,c,res1,x,y,z,res2,n)
  real(8),dimension(n) :: a,b,c,res1
  real(8),dimension(n) :: x,y,z,res2
  do i=1, n
     res1(i) = a(i) + b(i) + c(i)
     res2(i) = x(i) + y(i) + z(i)
  end do
end subroutine test3b

subroutine test4(a,b,c,res1,x,y,z,res2,n)
  real(8),dimension(n) :: a,b,c,res1
  real(8),dimension(n) :: x,y,z,res2
  do i=1, n
     res1(i) = a(i) + b(i) + c(i)
     res2(i) = x(i) + y(i) + z(i)
  end do
end subroutine test4

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

subroutine test10(a,b,c,res1,x,y,z,res2,n)
  real(8),dimension(n,n) :: a,b,c,res1
  real(8),dimension(n,n) :: x,y,z,res2
  do j=1, n
     do i=1, n-1
        res1(i,j) = a(i,j) + b(i,j) + c(i,j)
        res2(i,j) = x(i,j) + y(i,j) + z(i,j)
     end do
  end do
end subroutine test10

subroutine test11(a,b,c,res1,x,y,z,res2,n)
  real(8),dimension(n,n) :: a,b,c,res1
  real(8),dimension(n,n) :: x,y,z,res2
  do j=1, n
     do i1=1, n/2
        res1(i1,j) = a(i1,j) + b(i1,j) + c(i1,j)
        res2(i1,j) = x(i1,j) + y(i1,j) + z(i1,j)
     end do
     do i2=n/2, n
        res1(i2,j) = a(i2,j) + b(i2,j) + c(i2,j)
        res2(i2,j) = x(i2,j) + y(i2,j) + z(i2,j)
     end do
  end do
end subroutine test11

subroutine test12(a,b,c,res1,x,y,z,res2,n)
  real(8),dimension(n,n) :: a,b,c,res1
  real(8),dimension(n,n) :: x,y,z,res2
  do j=1, n
     do i=1, n
        res1(i,j) = a(i,j) + b(i,j) + c(i,j)
        res2(i,j) = x(i,j) + y(i,j) + z(i,j)
     end do
  end do
end subroutine test12

subroutine test13(a,b,c,res1,x,y,z,res2,n)
  real(8),dimension(n,n) :: a,b,c,res1
  real(8),dimension(n,n) :: x,y,z,res2
  do i=1, n-1
     do j=1, n-1
        res1(i,j) = a(i,j) + b(i,j) + c(i,j)
        res2(i,j) = x(i,j) + y(i,j) + z(i,j)
     end do
  end do
end subroutine test13

subroutine test14(a,b,c,res1,x,y,z,res2,n)
  real(8),dimension(n,n) :: a,b,c,res1
  real(8),dimension(n,n) :: x,y,z,res2
  do j=1, n
     do i=1, 5
        res1(i,j) = a(i,j) + b(i,j) + c(i,j)
        res2(i,j) = x(i,j) + y(i,j) + z(i,j)
     end do
  end do
end subroutine test14

subroutine test15(a,b,c,res1,x,y,z,res2,n)
  real(8),dimension(n) :: a,b,c,res1
  real(8),dimension(n) :: x,y,z,res2
  do i=2, n
     a(i) = a(i) + c(i) + x(i)
     b(i) = b(i-1) + a(i) + x(i)
     res1(i) = a(i) + b(i) + c(i)
     res2(i) = x(i) + y(i) + z(i)
  end do
end subroutine test15

program main
  integer,parameter:: n=1000
  real(8),dimension(n) :: a,b,c,res1
  real(8),dimension(n) :: x,y,z,res2
  real(8),dimension(n,n) :: aa,bb,cc,rres1
  real(8),dimension(n,n) :: xx,yy,zz,rres2

  call init_1d(a,b,c,res1,x,y,z,res2,n)
  call test1(a,b,c,res1,x,y,z,res2,n)
  call result1(res1, res2, n)

  call init_1d(a,b,c,res1,x,y,z,res2,n)
  call test2(a,b,c,res1,x,y,z,res2,n)
  call result1(res1, res2, n)

  call init_1d(a,b,c,res1,x,y,z,res2,n)
  call test2b(a,b,c,res1,x,y,z,res2,n)
  call result1(res1, res2, n)

  call init_1d(a,b,c,res1,x,y,z,res2,n)
  call test3(a,b,c,res1,x,y,z,res2,n)
  call result1(res1, res2, n)

  call init_1d(a,b,c,res1,x,y,z,res2,n)
  call test4(a,b,c,res1,x,y,z,res2,n)
  call result1(res1, res2, n)

  call init_1d(a,b,c,res1,x,y,z,res2,n)
  call test5(a,b,c,res1,x,y,z,res2,n)
  call result1(res1, res2, n)

  call init_1d(a,b,c,res1,x,y,z,res2,n)
  call test6(a,b,c,res1,x,y,z,res2,n)
  call result1(res1, res2, n)

  call init_2d(aa,bb,cc,rres1,xx,yy,zz,rres2,n)
  call test10(aa,bb,cc,rres1,xx,yy,zz,rres2,n)
  print *,rres1(n-1,n-1),rres2(n-1,n-1)

  call init_2d(aa,bb,cc,rres1,xx,yy,zz,rres2,n)
  call test11(aa,bb,cc,rres1,xx,yy,zz,rres2,n)
  print *,rres1(n-1,n-1),rres2(n-1,n-1)
  
  call init_2d(aa,bb,cc,rres1,xx,yy,zz,rres2,n)
  call test12(aa,bb,cc,rres1,xx,yy,zz,rres2,n)
  print *,rres1(n-1,n-1),rres2(n-1,n-1)

  call init_2d(aa,bb,cc,rres1,xx,yy,zz,rres2,n)
  call test13(aa,bb,cc,rres1,xx,yy,zz,rres2,n)
  print *,rres1(n-1,n-1),rres2(n-1,n-1)

  call init_2d(aa,bb,cc,rres1,xx,yy,zz,rres2,n)
  call test14(aa,bb,cc,rres1,xx,yy,zz,rres2,n)
  print *,rres1(5,n),rres2(5,n)

  call init_1d(a,b,c,res1,x,y,z,res2,n)
  call test15(a,b,c,res1,x,y,z,res2,n)
  print *,res1(n),res2(n)

end program main

subroutine init_1d(a,b,c,res1,x,y,z,res2,n)
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
end subroutine init_1d

subroutine init_2d(a,b,c,res1,x,y,z,res2,n)
  real(8),dimension(n,n) :: a,b,c,res1
  real(8),dimension(n,n) :: x,y,z,res2
  do j=1,n
     do i=1,n
        a(i,j) = i
        b(i,j) = i+n
        c(i,j) = i+n*2
        x(i,j) = i
        y(i,j) = i+n
        z(i,j) = i+n*2
        res1(i,j) = 0
        res2(i,j) = 0
     enddo
  enddo
end subroutine init_2d

subroutine result1(test_res1, test_res2, n)
  real(8),dimension(n) :: test_res1, test_res2
  real(8),dimension(n) :: a,b,c,res1
  real(8),dimension(n) :: x,y,z,res2
  integer error

  interface
     logical function is_equal_r8(a,b)
       real(kind=8)::a,b
     end function is_equal_r8
  end interface
  
  call init_1d(a,b,c,res1,x,y,z,res2,n)

  do i=1, n
     res1(i) = a(i) + b(i) + c(i)
     res2(i) = x(i) + y(i) + z(i)
  end do

  error = 0
  do i=1, n
     if (.not.is_equal_r8(res1(i), test_res1(i))) then
        error = error+1
     endif
     if (.not.is_equal_r8(res2(i), test_res2(i))) then
        error = error+1 
     endif
  enddo

  if (error.eq.0) then
     print *,"ok"
  else
     print *,"ng"
  endif

end subroutine result1

logical function is_equal_r8(a,b)
  real(kind=8)::a,b
  is_equal_r8 = ( abs(a-b)/abs(a) .lt. 1.0E-6)
end function is_equal_r8
