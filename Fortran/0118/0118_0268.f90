subroutine sub1(a,s,x)
real(4),dimension(1:4,1:2) :: a
real(4),dimension(1:2,1:3) :: s
real(4),dimension(1:4,1:3) :: x
real(4) :: f
f = 3.0_4*1.0_4
x = f*matmul(a,s)
end subroutine

subroutine sub2(a,s,x)
real(4),dimension(1:4,1:2) :: a
real(4),dimension(1:2,1:3) :: s
real(4),dimension(1:4,1:3) :: x
real(4) :: tmp,f
f = 3.0_4*1.0_4
do j=1,3
   do i=1,4
      tmp = 0.0_4
      do k=1,2
         tmp = tmp + a(i,k)*s(k,j)
      enddo
      x(i,j) = f*tmp
   enddo
enddo
end subroutine

subroutine sub3(a,s,x)
real(4),dimension(1:4,1:2) :: a
real(4),dimension(1:2,1:3) :: s
real(4),dimension(1:4,1:3) :: x
real(4) :: tmp,f
f = 3.0_4*1.0_4
tmp = 0.0_4
tmp = tmp + a(1,1)*s(1,1)
tmp = tmp + a(1,2)*s(2,1)
x(1,1) = f*tmp

tmp = 0.0_4
tmp = tmp + a(2,1)*s(1,1)
tmp = tmp + a(2,2)*s(2,1)
x(2,1) = f*tmp

tmp = 0.0_4
tmp = tmp + a(3,1)*s(1,1)
tmp = tmp + a(3,2)*s(2,1)
x(3,1) = f*tmp

tmp = 0.0_4
tmp = tmp + a(4,1)*s(1,1)
tmp = tmp + a(4,2)*s(2,1)
x(4,1) = f*tmp

tmp = 0.0_4
tmp = tmp + a(1,1)*s(1,2)
tmp = tmp + a(1,2)*s(2,2)
x(1,2) = f*tmp

tmp = 0.0_4
tmp = tmp + a(2,1)*s(1,2)
tmp = tmp + a(2,2)*s(2,2)
x(2,2) = f*tmp

tmp = 0.0_4
tmp = tmp + a(3,1)*s(1,2)
tmp = tmp + a(3,2)*s(2,2)
x(3,2) = f*tmp

tmp = 0.0_4
tmp = tmp + a(4,1)*s(1,2)
tmp = tmp + a(4,2)*s(2,2)
x(4,2) = f*tmp

tmp = 0.0_4
tmp = tmp + a(1,1)*s(1,3)
tmp = tmp + a(1,2)*s(2,3)
x(1,3) = f*tmp

tmp = 0.0_4
tmp = tmp + a(2,1)*s(1,3)
tmp = tmp + a(2,2)*s(2,3)
x(2,3) = f*tmp

tmp = 0.0_4
tmp = tmp + a(3,1)*s(1,3)
tmp = tmp + a(3,2)*s(2,3)
x(3,3) = f*tmp

tmp = 0.0_4
tmp = tmp + a(4,1)*s(1,3)
tmp = tmp + a(4,2)*s(2,3)
x(4,3) = f*tmp
end subroutine

subroutine check_x(x,test_no)
real(4),dimension(1:4,1:3) :: x
real(4),dimension(1:4,1:3) :: ans = reshape((/4.94999981_4, 6.29999971_4, 7.64999962_4, 9.00000000_4, 10.3500004_4, 13.5000000_4, 16.6499996_4, 19.8000011_4, 15.7500000_4, 20.6999989_4, 25.6499977_4, 30.6000023_4/),(/4,3/))
real(4),parameter :: error = 2.0E-06_4
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
real(4),dimension(1:4,1:2) :: a
real(4),dimension(1:2,1:3) :: s
real(4),dimension(1:4,1:3) :: x

a = reshape((/(real(i,kind=4)*0.3_8,i=1,4*2)/),(/4,2/))
s = reshape((/(real(i,kind=4)*0.5_8,i=1,2*3)/),(/2,3/))
x = reshape((/(real(i,kind=4)*0.9_8,i=1,4*3)/),(/4,3/))
call sub1(a,s,x)
call check_x(x,1)

a = reshape((/(real(i,kind=4)*0.3_8,i=1,4*2)/),(/4,2/))
s = reshape((/(real(i,kind=4)*0.5_8,i=1,2*3)/),(/2,3/))
x = reshape((/(real(i,kind=4)*0.9_8,i=1,4*3)/),(/4,3/))
call sub2(a,s,x)
call check_x(x,2)

a = reshape((/(real(i,kind=4)*0.3_8,i=1,4*2)/),(/4,2/))
s = reshape((/(real(i,kind=4)*0.5_8,i=1,2*3)/),(/2,3/))
x = reshape((/(real(i,kind=4)*0.9_8,i=1,4*3)/),(/4,3/))
call sub3(a,s,x)
call check_x(x,3)

end program
