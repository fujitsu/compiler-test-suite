subroutine sub1(a,s,x,b,v)
real(8),dimension(1:4,1:3) :: a
real(8),dimension(1:3,1:3) :: s
real(8),dimension(1:4,1:3) :: x,v
real(8) :: b
x = matmul(a,s)+b*x+v
end subroutine

subroutine sub2(a,s,x,b,v)
real(8),dimension(1:4,1:3) :: a
real(8),dimension(1:3,1:3) :: s
real(8),dimension(1:4,1:3) :: x,v
real(8) :: tmp,b
do j=1,3
   do i=1,4
      tmp = 0.0_8
      do k=1,3
         tmp = tmp + a(i,k)*s(k,j)
      enddo
      x(i,j) = tmp + b*x(i,j) + v(i,j)
   enddo
enddo
end subroutine

subroutine sub3(a,s,x,b,v)
real(8),dimension(1:4,1:3) :: a
real(8),dimension(1:3,1:3) :: s
real(8),dimension(1:4,1:3) :: x,v
real(8) :: tmp,b

tmp = 0.0_8
tmp = tmp + a(1,1)*s(1,1)
tmp = tmp + a(1,2)*s(2,1)
tmp = tmp + a(1,3)*s(3,1)
x(1,1) = tmp + b*x(1,1) + v(1,1)

tmp = 0.0_8
tmp = tmp + a(2,1)*s(1,1)
tmp = tmp + a(2,2)*s(2,1)
tmp = tmp + a(2,3)*s(3,1)
x(2,1) = tmp + b*x(2,1) + v(2,1)

tmp = 0.0_8
tmp = tmp + a(3,1)*s(1,1)
tmp = tmp + a(3,2)*s(2,1)
tmp = tmp + a(3,3)*s(3,1)
x(3,1) = tmp + b*x(3,1) + v(3,1)

tmp = 0.0_8
tmp = tmp + a(4,1)*s(1,1)
tmp = tmp + a(4,2)*s(2,1)
tmp = tmp + a(4,3)*s(3,1)
x(4,1) = tmp + b*x(4,1) + v(4,1)

tmp = 0.0_8
tmp = tmp + a(1,1)*s(1,2)
tmp = tmp + a(1,2)*s(2,2)
tmp = tmp + a(1,3)*s(3,2)
x(1,2) = tmp + b*x(1,2) + v(1,2)

tmp = 0.0_8
tmp = tmp + a(2,1)*s(1,2)
tmp = tmp + a(2,2)*s(2,2)
tmp = tmp + a(2,3)*s(3,2)
x(2,2) = tmp + b*x(2,2) + v(2,2)

tmp = 0.0_8
tmp = tmp + a(3,1)*s(1,2)
tmp = tmp + a(3,2)*s(2,2)
tmp = tmp + a(3,3)*s(3,2)
x(3,2) = tmp + b*x(3,2) + v(3,2)

tmp = 0.0_8
tmp = tmp + a(4,1)*s(1,2)
tmp = tmp + a(4,2)*s(2,2)
tmp = tmp + a(4,3)*s(3,2)
x(4,2) = tmp + b*x(4,2) + v(4,2)

tmp = 0.0_8
tmp = tmp + a(1,1)*s(1,3)
tmp = tmp + a(1,2)*s(2,3)
tmp = tmp + a(1,3)*s(3,3)
x(1,3) = tmp + b*x(1,3) + v(1,3)

tmp = 0.0_8
tmp = tmp + a(2,1)*s(1,3)
tmp = tmp + a(2,2)*s(2,3)
tmp = tmp + a(2,3)*s(3,3)
x(2,3) = tmp + b*x(2,3) + v(2,3)

tmp = 0.0_8
tmp = tmp + a(3,1)*s(1,3)
tmp = tmp + a(3,2)*s(2,3)
tmp = tmp + a(3,3)*s(3,3)
x(3,3) = tmp + b*x(3,3) + v(3,3)

tmp = 0.0_8
tmp = tmp + a(4,1)*s(1,3)
tmp = tmp + a(4,2)*s(2,3)
tmp = tmp + a(4,3)*s(3,3)
x(4,3) = tmp + b*x(4,3) + v(4,3)
end subroutine

logical function equal_with_margin(a,b)
  real(8) :: a,b
  equal_with_margin = ((abs(a - b)/abs(a)) .gt. 1.0D-15)
end function equal_with_margin

subroutine check_x(x,test_no)
real(8),dimension(1:4,1:3) :: x
real(8),dimension(1:4,1:3) :: ans = reshape((/247.8699999999999_8, 289.0200000000000_8, &
     330.1700000000000_8, 371.3199999999999_8, 548.1300000000000_8, 647.4200000000000_8, &
     746.7100000000000_8, 845.9999999999999_8, 848.3899999999999_8, 1005.820000000000_8, &
     1163.250000000000_8, 1320.680000000000_8/),(/4,3/))
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
real(8),dimension(1:4,1:3) :: a
real(8),dimension(1:3,1:3) :: s
real(8),dimension(1:4,1:3) :: x,v
real(8),parameter :: b=1.9_8

a = reshape((/(real(i,kind=8)*1.7_8,i=1,4*3)/),(/4,3/))
s = reshape((/(real(i,kind=8)*3.8_8,i=1,3*3)/),(/3,3/))
x = reshape((/(real(i,kind=8)*0.1_8,i=1,4*3)/),(/4,3/))
v = reshape((/(real(i,kind=8)*2.2_8,i=1,4*3)/),(/4,3/))
call sub1(a,s,x,b,v)
call check_x(x,1)

a = reshape((/(real(i,kind=8)*1.7_8,i=1,4*3)/),(/4,3/))
s = reshape((/(real(i,kind=8)*3.8_8,i=1,3*3)/),(/3,3/))
x = reshape((/(real(i,kind=8)*0.1_8,i=1,4*3)/),(/4,3/))
v = reshape((/(real(i,kind=8)*2.2_8,i=1,4*3)/),(/4,3/))
call sub2(a,s,x,b,v)
call check_x(x,2)

a = reshape((/(real(i,kind=8)*1.7_8,i=1,4*3)/),(/4,3/))
s = reshape((/(real(i,kind=8)*3.8_8,i=1,3*3)/),(/3,3/))
x = reshape((/(real(i,kind=8)*0.1_8,i=1,4*3)/),(/4,3/))
v = reshape((/(real(i,kind=8)*2.2_8,i=1,4*3)/),(/4,3/))
call sub3(a,s,x,b,v)
call check_x(x,3)
end program
