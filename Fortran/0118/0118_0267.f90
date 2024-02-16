logical function equal_with_margin(a,b)
  real(4) :: a,b
  equal_with_margin = ((abs(a - b)/abs(a)) .gt. 1.0E-6)
end function equal_with_margin

subroutine sub1(a,s,x,f,v)
real(4),dimension(1:4,1:2) :: a
real(4),dimension(1:2,1:3) :: s
real(4),dimension(1:4,1:3) :: x,v
real(4) :: f
x = f*matmul(a,s)+v
end subroutine

subroutine sub2(a,s,x,f,v)
real(4),dimension(1:4,1:2) :: a
real(4),dimension(1:2,1:3) :: s
real(4),dimension(1:4,1:3) :: x,v
real(4) :: tmp,f
do j=1,3
   do i=1,4
      tmp = 0.0_4
      do k=1,2
         tmp = tmp + a(i,k)*s(k,j)
      enddo
      x(i,j) = f*tmp + v(i,j)
   enddo
enddo
end subroutine

subroutine sub3(a,s,x,f,v)
real(4),dimension(1:4,1:2) :: a
real(4),dimension(1:2,1:3) :: s
real(4),dimension(1:4,1:3) :: x,v
real(4) :: tmp,f

tmp = 0.0_4
tmp = tmp + a(1,1)*s(1,1)
tmp = tmp + a(1,2)*s(2,1)
x(1,1) = f*tmp + v(1,1)

tmp = 0.0_4
tmp = tmp + a(2,1)*s(1,1)
tmp = tmp + a(2,2)*s(2,1)
x(2,1) = f*tmp + v(2,1)

tmp = 0.0_4
tmp = tmp + a(3,1)*s(1,1)
tmp = tmp + a(3,2)*s(2,1)
x(3,1) = f*tmp + v(3,1)

tmp = 0.0_4
tmp = tmp + a(4,1)*s(1,1)
tmp = tmp + a(4,2)*s(2,1)
x(4,1) = f*tmp + v(4,1)

tmp = 0.0_4
tmp = tmp + a(1,1)*s(1,2)
tmp = tmp + a(1,2)*s(2,2)
x(1,2) = f*tmp + v(1,2)

tmp = 0.0_4
tmp = tmp + a(2,1)*s(1,2)
tmp = tmp + a(2,2)*s(2,2)
x(2,2) = f*tmp + v(2,2)

tmp = 0.0_4
tmp = tmp + a(3,1)*s(1,2)
tmp = tmp + a(3,2)*s(2,2)
x(3,2) = f*tmp + v(3,2)

tmp = 0.0_4
tmp = tmp + a(4,1)*s(1,2)
tmp = tmp + a(4,2)*s(2,2)
x(4,2) = f*tmp + v(4,2)

tmp = 0.0_4
tmp = tmp + a(1,1)*s(1,3)
tmp = tmp + a(1,2)*s(2,3)
x(1,3) = f*tmp + v(1,3)

tmp = 0.0_4
tmp = tmp + a(2,1)*s(1,3)
tmp = tmp + a(2,2)*s(2,3)
x(2,3) = f*tmp + v(2,3)

tmp = 0.0_4
tmp = tmp + a(3,1)*s(1,3)
tmp = tmp + a(3,2)*s(2,3)
x(3,3) = f*tmp + v(3,3)

tmp = 0.0_4
tmp = tmp + a(4,1)*s(1,3)
tmp = tmp + a(4,2)*s(2,3)
x(4,3) = f*tmp + v(4,3)
end subroutine

subroutine check_x(x,test_no)
real(4),dimension(1:4,1:3) :: x
real(4),dimension(1:4,1:3) :: ans = reshape((/19.6800003_4, 25.9199982_4, 32.1599998_4, 38.3999977_4, 44.6399994_4, 57.5999985_4, 70.5600052_4, 83.5199966_4, 69.6000061_4, 89.2799988_4, 108.959999_4, 128.639999_4/),(/4,3/))
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
real(4),dimension(1:4,1:3) :: x,v
real(4),parameter :: f=3.0_4

a = reshape((/(real(i,kind=4)*0.7_8,i=1,4*2)/),(/4,2/))
s = reshape((/(real(i,kind=4)*0.8_8,i=1,2*3)/),(/2,3/))
x = reshape((/(real(i,kind=4)*0.9_8,i=1,4*3)/),(/4,3/))
v = reshape((/(real(i,kind=4)*1.2_8,i=1,4*3)/),(/4,3/))
call sub1(a,s,x,f,v)
call check_x(x,1)

a = reshape((/(real(i,kind=4)*0.7_8,i=1,4*2)/),(/4,2/))
s = reshape((/(real(i,kind=4)*0.8_8,i=1,2*3)/),(/2,3/))
x = reshape((/(real(i,kind=4)*0.9_8,i=1,4*3)/),(/4,3/))
v = reshape((/(real(i,kind=4)*1.2_8,i=1,4*3)/),(/4,3/))
call sub2(a,s,x,f,v)
call check_x(x,2)

a = reshape((/(real(i,kind=4)*0.7_8,i=1,4*2)/),(/4,2/))
s = reshape((/(real(i,kind=4)*0.8_8,i=1,2*3)/),(/2,3/))
x = reshape((/(real(i,kind=4)*0.9_8,i=1,4*3)/),(/4,3/))
v = reshape((/(real(i,kind=4)*1.2_8,i=1,4*3)/),(/4,3/))
call sub3(a,s,x,f,v)
call check_x(x,3)

end program
