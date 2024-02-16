subroutine sub1(a,s,x,f,v)
real(8),dimension(1:4,1:2) :: a
real(8),dimension(1:2,1:3) :: s
real(8),dimension(1:4,1:3) :: x,v
real(8) :: f
x = f*matmul(a,s)+v
end subroutine

subroutine sub2(a,s,x,f,v)
real(8),dimension(1:4,1:2) :: a
real(8),dimension(1:2,1:3) :: s
real(8),dimension(1:4,1:3) :: x,v
real(8) :: tmp,f
do j=1,3
   do i=1,4
      tmp = 0.0_8
      do k=1,2
         tmp = tmp + a(i,k)*s(k,j)
      enddo
      x(i,j) = f*tmp + v(i,j)
   enddo
enddo
end subroutine

subroutine sub3(a,s,x,f,v)
real(8),dimension(1:4,1:2) :: a
real(8),dimension(1:2,1:3) :: s
real(8),dimension(1:4,1:3) :: x,v
real(8) :: tmp,f

tmp = 0.0_8
tmp = tmp + a(1,1)*s(1,1)
tmp = tmp + a(1,2)*s(2,1)
x(1,1) = f*tmp + v(1,1)

tmp = 0.0_8
tmp = tmp + a(2,1)*s(1,1)
tmp = tmp + a(2,2)*s(2,1)
x(2,1) = f*tmp + v(2,1)

tmp = 0.0_8
tmp = tmp + a(3,1)*s(1,1)
tmp = tmp + a(3,2)*s(2,1)
x(3,1) = f*tmp + v(3,1)

tmp = 0.0_8
tmp = tmp + a(4,1)*s(1,1)
tmp = tmp + a(4,2)*s(2,1)
x(4,1) = f*tmp + v(4,1)

tmp = 0.0_8
tmp = tmp + a(1,1)*s(1,2)
tmp = tmp + a(1,2)*s(2,2)
x(1,2) = f*tmp + v(1,2)

tmp = 0.0_8
tmp = tmp + a(2,1)*s(1,2)
tmp = tmp + a(2,2)*s(2,2)
x(2,2) = f*tmp + v(2,2)

tmp = 0.0_8
tmp = tmp + a(3,1)*s(1,2)
tmp = tmp + a(3,2)*s(2,2)
x(3,2) = f*tmp + v(3,2)

tmp = 0.0_8
tmp = tmp + a(4,1)*s(1,2)
tmp = tmp + a(4,2)*s(2,2)
x(4,2) = f*tmp + v(4,2)

tmp = 0.0_8
tmp = tmp + a(1,1)*s(1,3)
tmp = tmp + a(1,2)*s(2,3)
x(1,3) = f*tmp + v(1,3)

tmp = 0.0_8
tmp = tmp + a(2,1)*s(1,3)
tmp = tmp + a(2,2)*s(2,3)
x(2,3) = f*tmp + v(2,3)

tmp = 0.0_8
tmp = tmp + a(3,1)*s(1,3)
tmp = tmp + a(3,2)*s(2,3)
x(3,3) = f*tmp + v(3,3)

tmp = 0.0_8
tmp = tmp + a(4,1)*s(1,3)
tmp = tmp + a(4,2)*s(2,3)
x(4,3) = f*tmp + v(4,3)
end subroutine

subroutine check_x(x,test_no)
real(8),dimension(1:4,1:3) :: x
real(8),dimension(1:4,1:3) :: ans = reshape((/19.68000000000000_8, 25.91999999999999_8, &
     32.16000000000000_8, 38.39999999999999_8, 44.64000000000000_8, 57.59999999999999_8, &
     70.56000000000000_8, 83.52000000000000_8, 69.60000000000001_8, 89.28000000000000_8, &
     108.9600000000000_8, 128.6400000000000_8/),(/4,3/))
real(8),parameter :: error = 5.200000003924288E-06_8
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
real(8),dimension(1:4,1:2) :: a
real(8),dimension(1:2,1:3) :: s
real(8),dimension(1:4,1:3) :: x,v
real(8),parameter :: f=3.0_8

a = reshape((/(real(i,kind=8)*0.7_8,i=1,4*2)/),(/4,2/))
s = reshape((/(real(i,kind=8)*0.8_8,i=1,2*3)/),(/2,3/))
x = reshape((/(real(i,kind=8)*0.9_8,i=1,4*3)/),(/4,3/))
v = reshape((/(real(i,kind=8)*1.2_8,i=1,4*3)/),(/4,3/))
call sub1(a,s,x,f,v)
call check_x(x,1)

a = reshape((/(real(i,kind=8)*0.7_8,i=1,4*2)/),(/4,2/))
s = reshape((/(real(i,kind=8)*0.8_8,i=1,2*3)/),(/2,3/))
x = reshape((/(real(i,kind=8)*0.9_8,i=1,4*3)/),(/4,3/))
v = reshape((/(real(i,kind=8)*1.2_8,i=1,4*3)/),(/4,3/))
call sub2(a,s,x,f,v)
call check_x(x,2)

a = reshape((/(real(i,kind=8)*0.7_8,i=1,4*2)/),(/4,2/))
s = reshape((/(real(i,kind=8)*0.8_8,i=1,2*3)/),(/2,3/))
x = reshape((/(real(i,kind=8)*0.9_8,i=1,4*3)/),(/4,3/))
v = reshape((/(real(i,kind=8)*1.2_8,i=1,4*3)/),(/4,3/))
call sub3(a,s,x,f,v)
call check_x(x,3)

end program
