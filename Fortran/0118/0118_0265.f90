logical function equal_with_margin(a,b)
  real(4) :: a,b
  equal_with_margin = ((abs(a - b)/abs(a)) .gt. 1.0E-6)
end function equal_with_margin

subroutine sub1(a,s,x,f,b)
real(4),dimension(1:4,1:2) :: a
real(4),dimension(1:2,1:3) :: s
real(4),dimension(1:4,1:3) :: x
real(4) :: f,b
x = f*matmul(a,s)+b*x
end subroutine

subroutine sub2(a,s,x,f,b)
real(4),dimension(1:4,1:2) :: a
real(4),dimension(1:2,1:3) :: s
real(4),dimension(1:4,1:3) :: x
real(4) :: tmp,f,b
do j=1,3
   do i=1,4
      tmp = 0.0_4
      do k=1,2
         tmp = tmp + a(i,k)*s(k,j)
      enddo
      x(i,j) = f*tmp + b*x(i,j)
   enddo
enddo
end subroutine

subroutine sub3(a,s,x,f,b)
real(4),dimension(1:4,1:2) :: a
real(4),dimension(1:2,1:3) :: s
real(4),dimension(1:4,1:3) :: x
real(4) :: tmp,f,b

tmp = 0.0_4
tmp = tmp + a(1,1)*s(1,1)
tmp = tmp + a(1,2)*s(2,1)
x(1,1) = f*tmp + b*x(1,1)

tmp = 0.0_4
tmp = tmp + a(2,1)*s(1,1)
tmp = tmp + a(2,2)*s(2,1)
x(2,1) = f*tmp + b*x(2,1)

tmp = 0.0_4
tmp = tmp + a(3,1)*s(1,1)
tmp = tmp + a(3,2)*s(2,1)
x(3,1) = f*tmp + b*x(3,1)

tmp = 0.0_4
tmp = tmp + a(4,1)*s(1,1)
tmp = tmp + a(4,2)*s(2,1)
x(4,1) = f*tmp + b*x(4,1)

tmp = 0.0_4
tmp = tmp + a(1,1)*s(1,2)
tmp = tmp + a(1,2)*s(2,2)
x(1,2) = f*tmp + b*x(1,2)

tmp = 0.0_4
tmp = tmp + a(2,1)*s(1,2)
tmp = tmp + a(2,2)*s(2,2)
x(2,2) = f*tmp + b*x(2,2)

tmp = 0.0_4
tmp = tmp + a(3,1)*s(1,2)
tmp = tmp + a(3,2)*s(2,2)
x(3,2) = f*tmp + b*x(3,2)

tmp = 0.0_4
tmp = tmp + a(4,1)*s(1,2)
tmp = tmp + a(4,2)*s(2,2)
x(4,2) = f*tmp + b*x(4,2)

tmp = 0.0_4
tmp = tmp + a(1,1)*s(1,3)
tmp = tmp + a(1,2)*s(2,3)
x(1,3) = f*tmp + b*x(1,3)

tmp = 0.0_4
tmp = tmp + a(2,1)*s(1,3)
tmp = tmp + a(2,2)*s(2,3)
x(2,3) = f*tmp + b*x(2,3)

tmp = 0.0_4
tmp = tmp + a(3,1)*s(1,3)
tmp = tmp + a(3,2)*s(2,3)
x(3,3) = f*tmp + b*x(3,3)

tmp = 0.0_4
tmp = tmp + a(4,1)*s(1,3)
tmp = tmp + a(4,2)*s(2,3)
x(4,3) = f*tmp + b*x(4,3)
end subroutine

subroutine check_x(x,test_no)
real(4),dimension(1:4,1:3) :: x
real(4),dimension(1:4,1:3) :: ans = reshape((/20.1899986_4, 26.9399986_4, 33.6900024_4, 40.4399986_4, 47.1899986_4, 60.6599960_4, 74.1300049_4, 87.5999985_4, 74.1900024_4, 94.3799973_4, 114.570000_4, 134.760010_4/),(/4,3/))
integer :: test_no
logical :: equal_with_margin
do j=1,3
   do i=1,4
      if (equal_with_margin(x(i,j),ans(i,j))) then
         print *,"test_no=",test_no,", ng: i=",i,": res=", x(i,j),"ans=",ans(i,j)
         print *,x
         return
      endif
   enddo
enddo
print *,"ok"
end subroutine

program main
real(4),dimension(1:4,1:2) :: a
real(4),dimension(1:2,1:3) :: s
real(4),dimension(1:4,1:3) :: x
real(4),parameter :: f=3.0_4, b=1.9_4

a = reshape((/(real(i,kind=4)*0.7_8,i=1,4*2)/),(/4,2/))
s = reshape((/(real(i,kind=4)*0.8_8,i=1,2*3)/),(/2,3/))
x = reshape((/(real(i,kind=4)*0.9_8,i=1,4*3)/),(/4,3/))
call sub1(a,s,x,f,b)
call check_x(x,1)

a = reshape((/(real(i,kind=4)*0.7_8,i=1,4*2)/),(/4,2/))
s = reshape((/(real(i,kind=4)*0.8_8,i=1,2*3)/),(/2,3/))
x = reshape((/(real(i,kind=4)*0.9_8,i=1,4*3)/),(/4,3/))
call sub2(a,s,x,f,b)
call check_x(x,2)

a = reshape((/(real(i,kind=4)*0.7_8,i=1,4*2)/),(/4,2/))
s = reshape((/(real(i,kind=4)*0.8_8,i=1,2*3)/),(/2,3/))
x = reshape((/(real(i,kind=4)*0.9_8,i=1,4*3)/),(/4,3/))
call sub3(a,s,x,f,b)
call check_x(x,3)

end program
