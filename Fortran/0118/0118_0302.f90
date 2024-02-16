subroutine sub1(a,s,x,f,b,v)
real(8),dimension(1:2,1:4) :: a
real(8),dimension(1:2,1:3) :: s
real(8),dimension(1:4,1:3) :: x,v
real(8) :: f,b
x = f*matmul(transpose(a),s)+b*x+v
end subroutine

subroutine sub2(a,s,x,f,b,v)
real(8),dimension(1:2,1:4) :: a
real(8),dimension(1:2,1:3) :: s
real(8),dimension(1:4,1:3) :: x,v
real(8) :: tmp,f,b
do j=1,3
   do i=1,4
      tmp = 0.0_8
      do k=1,2
         tmp = tmp + a(k,i)*s(k,j)
      enddo
      x(i,j) = f*tmp + b*x(i,j) + v(i,j)
   enddo
enddo
end subroutine

subroutine sub3(a,s,x,f,b,v)
real(8),dimension(1:2,1:4) :: a
real(8),dimension(1:2,1:3) :: s
real(8),dimension(1:4,1:3) :: x,v
real(8) :: tmp,f,b

tmp = 0.0_8
tmp = tmp + a(1,1)*s(1,1)
tmp = tmp + a(2,1)*s(2,1)
x(1,1) = f*tmp + b*x(1,1) + v(1,1)

tmp = 0.0_8
tmp = tmp + a(1,2)*s(1,1)
tmp = tmp + a(2,2)*s(2,1)
x(2,1) = f*tmp + b*x(2,1) + v(2,1)

tmp = 0.0_8
tmp = tmp + a(1,3)*s(1,1)
tmp = tmp + a(2,3)*s(2,1)
x(3,1) = f*tmp + b*x(3,1) + v(3,1)

tmp = 0.0_8
tmp = tmp + a(1,4)*s(1,1)
tmp = tmp + a(2,4)*s(2,1)
x(4,1) = f*tmp + b*x(4,1) + v(4,1)

tmp = 0.0_8
tmp = tmp + a(1,1)*s(1,2)
tmp = tmp + a(2,1)*s(2,2)
x(1,2) = f*tmp + b*x(1,2) + v(1,2)

tmp = 0.0_8
tmp = tmp + a(1,2)*s(1,2)
tmp = tmp + a(2,2)*s(2,2)
x(2,2) = f*tmp + b*x(2,2) + v(2,2)

tmp = 0.0_8
tmp = tmp + a(1,3)*s(1,2)
tmp = tmp + a(2,3)*s(2,2)
x(3,2) = f*tmp + b*x(3,2) + v(3,2)

tmp = 0.0_8
tmp = tmp + a(1,4)*s(1,2)
tmp = tmp + a(2,4)*s(2,2)
x(4,2) = f*tmp + b*x(4,2) + v(4,2)

tmp = 0.0_8
tmp = tmp + a(1,1)*s(1,3)
tmp = tmp + a(2,1)*s(2,3)
x(1,3) = f*tmp + b*x(1,3) + v(1,3)

tmp = 0.0_8
tmp = tmp + a(1,2)*s(1,3)
tmp = tmp + a(2,2)*s(2,3)
x(2,3) = f*tmp + b*x(2,3) + v(2,3)

tmp = 0.0_8
tmp = tmp + a(1,3)*s(1,3)
tmp = tmp + a(2,3)*s(2,3)
x(3,3) = f*tmp + b*x(3,3) + v(3,3)

tmp = 0.0_8
tmp = tmp + a(1,4)*s(1,3)
tmp = tmp + a(2,4)*s(2,3)
x(4,3) = f*tmp + b*x(4,3) + v(4,3)
end subroutine

subroutine check_x(x,test_no)
real(8),dimension(1:4,1:3) :: x
real(8),dimension(1:4,1:3) :: ans = reshape((/11.31000000000000_8, 24.30000000000000_8, &
     37.29000000000000_8, 50.28000000000000_8, 33.03000000000000_8, 59.46000000000000_8, &
     85.89000000000000_8, 112.3200000000000_8, 54.75000000000000_8, 94.61999999999999_8, &
     134.4900000000000_8, 174.3600000000000_8/),(/4,3/))
real(8),parameter :: error = 3.0E-14_8
integer :: test_no
do j=1,3
   do i=1,4
      if (abs(x(i,j)-ans(i,j)) .gt. error) then
         print *,"test_no=",test_no,", ng: i=",i,": res=", x(i,j),"ans=",ans(i,j),abs(x(i,j)-ans(i,j)),error
         print *,x
         return
      endif
   enddo
enddo
print *,"ok"
end subroutine

program main
real(8),dimension(1:2,1:4) :: a
real(8),dimension(1:2,1:3) :: s
real(8),dimension(1:4,1:3) :: x,v
real(8),parameter :: f=3.0_8, b=1.9_8

a = reshape((/(real(i,kind=8)*0.7_8,i=1,2*4)/),(/2,4/))
s = reshape((/(real(i,kind=8)*0.8_8,i=1,2*3)/),(/2,3/))
x = reshape((/(real(i,kind=8)*0.9_8,i=1,4*3)/),(/4,3/))
v = reshape((/(real(i,kind=8)*1.2_8,i=1,4*3)/),(/4,3/))
call sub1(a,s,x,f,b,v)
call check_x(x,1)

a = reshape((/(real(i,kind=8)*0.7_8,i=1,2*4)/),(/2,4/))
s = reshape((/(real(i,kind=8)*0.8_8,i=1,2*3)/),(/2,3/))
x = reshape((/(real(i,kind=8)*0.9_8,i=1,4*3)/),(/4,3/))
v = reshape((/(real(i,kind=8)*1.2_8,i=1,4*3)/),(/4,3/))
call sub2(a,s,x,f,b,v)
call check_x(x,2)

a = reshape((/(real(i,kind=8)*0.7_8,i=1,2*4)/),(/2,4/))
s = reshape((/(real(i,kind=8)*0.8_8,i=1,2*3)/),(/2,3/))
x = reshape((/(real(i,kind=8)*0.9_8,i=1,4*3)/),(/4,3/))
v = reshape((/(real(i,kind=8)*1.2_8,i=1,4*3)/),(/4,3/))
call sub3(a,s,x,f,b,v)
call check_x(x,3)

end program
