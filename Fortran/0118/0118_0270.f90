subroutine sub1(a,s,x,b)
real(4),dimension(1:2,1:5) :: a
real(4),dimension(1:5,1:3) :: s
real(4),dimension(1:2,1:3) :: x
real(4) :: b
x = matmul(a,s) + b*x
end subroutine

subroutine sub2(a,s,x,b)
real(4),dimension(1:2,1:5) :: a
real(4),dimension(1:5,1:3) :: s
real(4),dimension(1:2,1:3) :: x
real(4) :: tmp,b
do j=1,3
   do i=1,2
      tmp = 0.0_4
      do k=1,5
         tmp = tmp + a(i,k)*s(k,j)
      enddo
      x(i,j) = tmp + b*x(i,j)
   enddo
enddo
end subroutine

subroutine sub3(a,s,x,b)
real(4),dimension(1:2,1:5) :: a
real(4),dimension(1:5,1:3) :: s
real(4),dimension(1:2,1:3) :: x
real(4) :: tmp,b

tmp = 0.0_4
tmp = tmp + a(1,1)*s(1,1)
tmp = tmp + a(1,2)*s(2,1)
tmp = tmp + a(1,3)*s(3,1)
tmp = tmp + a(1,4)*s(4,1)
tmp = tmp + a(1,5)*s(5,1)
x(1,1) = tmp + b*x(1,1)

tmp = 0.0_4
tmp = tmp + a(2,1)*s(1,1)
tmp = tmp + a(2,2)*s(2,1)
tmp = tmp + a(2,3)*s(3,1)
tmp = tmp + a(2,4)*s(4,1)
tmp = tmp + a(2,5)*s(5,1)
x(2,1) = tmp + b*x(2,1)

tmp = 0.0_4
tmp = tmp + a(1,1)*s(1,2)
tmp = tmp + a(1,2)*s(2,2)
tmp = tmp + a(1,3)*s(3,2)
tmp = tmp + a(1,4)*s(4,2)
tmp = tmp + a(1,5)*s(5,2)
x(1,2) = tmp + b*x(1,2)

tmp = 0.0_4
tmp = tmp + a(2,1)*s(1,2)
tmp = tmp + a(2,2)*s(2,2)
tmp = tmp + a(2,3)*s(3,2)
tmp = tmp + a(2,4)*s(4,2)
tmp = tmp + a(2,5)*s(5,2)
x(2,2) = tmp + b*x(2,2)

tmp = 0.0_4
tmp = tmp + a(1,1)*s(1,3)
tmp = tmp + a(1,2)*s(2,3)
tmp = tmp + a(1,3)*s(3,3)
tmp = tmp + a(1,4)*s(4,3)
tmp = tmp + a(1,5)*s(5,3)
x(1,3) = tmp + b*x(1,3)

tmp = 0.0_4
tmp = tmp + a(2,1)*s(1,3)
tmp = tmp + a(2,2)*s(2,3)
tmp = tmp + a(2,3)*s(3,3)
tmp = tmp + a(2,4)*s(4,3)
tmp = tmp + a(2,5)*s(5,3)
x(2,3) = tmp + b*x(2,3)
end subroutine

subroutine check_x(x,test_no)
real(4),dimension(1:2,1:3) :: x
real(4),dimension(1:2,1:3) :: ans = reshape((/17.2199993_4, 22.4399986_4, 41.9099998_4, 50.8799973_4, 66.5999985_4, 79.3199997_4/),(/2,3/))
real(4),parameter :: error = 0.000008_4
integer :: test_no
do j=1,3
   do i=1,2
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
real(4),dimension(1:2,1:5) :: a
real(4),dimension(1:5,1:3) :: s
real(4),dimension(1:2,1:3) :: x
real(4),parameter :: b=3.3_4

a = reshape((/(real(i,kind=4)*0.3_8,i=1,2*5)/),(/2,5/))
s = reshape((/(real(i,kind=4)*0.5_8,i=1,5*3)/),(/5,3/))
x = reshape((/(real(i,kind=4)*0.9_8,i=1,2*3)/),(/2,3/))
call sub1(a,s,x,b)
call check_x(x,1)

a = reshape((/(real(i,kind=4)*0.3_8,i=1,2*5)/),(/2,5/))
s = reshape((/(real(i,kind=4)*0.5_8,i=1,5*3)/),(/5,3/))
x = reshape((/(real(i,kind=4)*0.9_8,i=1,2*3)/),(/2,3/))
call sub2(a,s,x,b)
call check_x(x,2)

a = reshape((/(real(i,kind=4)*0.3_8,i=1,2*5)/),(/2,5/))
s = reshape((/(real(i,kind=4)*0.5_8,i=1,5*3)/),(/5,3/))
x = reshape((/(real(i,kind=4)*0.9_8,i=1,2*3)/),(/2,3/))
call sub3(a,s,x,b)
call check_x(x,3)

end program
