logical function equal_with_margin(a,b)
  real(4) :: a,b
  equal_with_margin = ((abs(a - b)/abs(a)) .gt. 1.0E-6)
end function equal_with_margin

subroutine sub1(a,s,x,b,v)
real(4),dimension(1:3,1:4) :: a
real(4),dimension(1:3,1:3) :: s
real(4),dimension(1:4,1:3) :: x,v
real(4) :: b
x = matmul(transpose(a),s)+b*x+v
end subroutine

subroutine sub2(a,s,x,b,v)
real(4),dimension(1:3,1:4) :: a
real(4),dimension(1:3,1:3) :: s
real(4),dimension(1:4,1:3) :: x,v
real(4) :: tmp,b
do j=1,3
   do i=1,4
      tmp = 0.0_4
      do k=1,3
         tmp = tmp + a(k,i)*s(k,j)
      enddo
      x(i,j) = tmp + b*x(i,j) + v(i,j)
   enddo
enddo
end subroutine

subroutine sub3(a,s,x,b,v)
real(4),dimension(1:3,1:4) :: a
real(4),dimension(1:3,1:3) :: s
real(4),dimension(1:4,1:3) :: x,v
real(4) :: tmp,b

tmp = 0.0_4
tmp = tmp + a(1,1)*s(1,1)
tmp = tmp + a(2,1)*s(2,1)
tmp = tmp + a(3,1)*s(3,1)
x(1,1) = tmp + b*x(1,1) + v(1,1)

tmp = 0.0_4
tmp = tmp + a(1,2)*s(1,1)
tmp = tmp + a(2,2)*s(2,1)
tmp = tmp + a(3,2)*s(3,1)
x(2,1) = tmp + b*x(2,1) + v(2,1)

tmp = 0.0_4
tmp = tmp + a(1,3)*s(1,1)
tmp = tmp + a(2,3)*s(2,1)
tmp = tmp + a(3,3)*s(3,1)
x(3,1) = tmp + b*x(3,1) + v(3,1)

tmp = 0.0_4
tmp = tmp + a(1,4)*s(1,1)
tmp = tmp + a(2,4)*s(2,1)
tmp = tmp + a(3,4)*s(3,1)
x(4,1) = tmp + b*x(4,1) + v(4,1)

tmp = 0.0_4
tmp = tmp + a(1,1)*s(1,2)
tmp = tmp + a(2,1)*s(2,2)
tmp = tmp + a(3,1)*s(3,2)
x(1,2) = tmp + b*x(1,2) + v(1,2)

tmp = 0.0_4
tmp = tmp + a(1,2)*s(1,2)
tmp = tmp + a(2,2)*s(2,2)
tmp = tmp + a(3,2)*s(3,2)
x(2,2) = tmp + b*x(2,2) + v(2,2)

tmp = 0.0_4
tmp = tmp + a(1,3)*s(1,2)
tmp = tmp + a(2,3)*s(2,2)
tmp = tmp + a(3,3)*s(3,2)
x(3,2) = tmp + b*x(3,2) + v(3,2)

tmp = 0.0_4
tmp = tmp + a(1,4)*s(1,2)
tmp = tmp + a(2,4)*s(2,2)
tmp = tmp + a(3,4)*s(3,2)
x(4,2) = tmp + b*x(4,2) + v(4,2)

tmp = 0.0_4
tmp = tmp + a(1,1)*s(1,3)
tmp = tmp + a(2,1)*s(2,3)
tmp = tmp + a(3,1)*s(3,3)
x(1,3) = tmp + b*x(1,3) + v(1,3)

tmp = 0.0_4
tmp = tmp + a(1,2)*s(1,3)
tmp = tmp + a(2,2)*s(2,3)
tmp = tmp + a(3,2)*s(3,3)
x(2,3) = tmp + b*x(2,3) + v(2,3)

tmp = 0.0_4
tmp = tmp + a(1,3)*s(1,3)
tmp = tmp + a(2,3)*s(2,3)
tmp = tmp + a(3,3)*s(3,3)
x(3,3) = tmp + b*x(3,3) + v(3,3)

tmp = 0.0_4
tmp = tmp + a(1,4)*s(1,3)
tmp = tmp + a(2,4)*s(2,3)
tmp = tmp + a(3,4)*s(3,3)
x(4,3) = tmp + b*x(4,3) + v(4,3)
end subroutine

subroutine check_x(x,test_no)
real(4),dimension(1:4,1:3) :: x
real(4),dimension(1:4,1:3) :: ans = reshape((/92.8299942_4, 211.500000_4, 330.170013_4, 448.839966_4, 218.669983_4, 511.760010_4, 804.850037_4, 1097.93994_4, 344.509979_4, 812.020020_4, 1279.52991_4, 1747.04016_4/),(/4,3/))
logical :: equal_with_margin
integer :: test_no
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
real(4),dimension(1:3,1:4) :: a
real(4),dimension(1:3,1:3) :: s
real(4),dimension(1:4,1:3) :: x,v
real(4),parameter :: b=1.9_4

a = reshape((/(real(i,kind=4)*1.7_8,i=1,3*4)/),(/3,4/))
s = reshape((/(real(i,kind=4)*3.8_8,i=1,3*3)/),(/3,3/))
x = reshape((/(real(i,kind=4)*0.1_8,i=1,4*3)/),(/4,3/))
v = reshape((/(real(i,kind=4)*2.2_8,i=1,4*3)/),(/4,3/))
call sub1(a,s,x,b,v)
call check_x(x,1)

a = reshape((/(real(i,kind=4)*1.7_8,i=1,3*4)/),(/3,4/))
s = reshape((/(real(i,kind=4)*3.8_8,i=1,3*3)/),(/3,3/))
x = reshape((/(real(i,kind=4)*0.1_8,i=1,4*3)/),(/4,3/))
v = reshape((/(real(i,kind=4)*2.2_8,i=1,4*3)/),(/4,3/))
call sub2(a,s,x,b,v)
call check_x(x,2)

a = reshape((/(real(i,kind=4)*1.7_8,i=1,3*4)/),(/3,4/))
s = reshape((/(real(i,kind=4)*3.8_8,i=1,3*3)/),(/3,3/))
x = reshape((/(real(i,kind=4)*0.1_8,i=1,4*3)/),(/4,3/))
v = reshape((/(real(i,kind=4)*2.2_8,i=1,4*3)/),(/4,3/))
call sub3(a,s,x,b,v)
call check_x(x,3)
end program
