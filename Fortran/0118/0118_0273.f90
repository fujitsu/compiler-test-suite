subroutine sub1(a,s,x,v)
real(4),dimension(1:4,1:2) :: a
real(4),dimension(1:2,1:3) :: s
real(4),dimension(1:4,1:3) :: x,v
x = matmul(a,s) + v
end subroutine

subroutine sub2(a,s,x,v)
real(4),dimension(1:4,1:2) :: a
real(4),dimension(1:2,1:3) :: s
real(4),dimension(1:4,1:3) :: x,v
real(4) :: tmp
do j=1,3
   do i=1,4
      tmp = 0.0_4
      do k=1,2
         tmp = tmp + a(i,k)*s(k,j)
      enddo
      x(i,j) = tmp + v(i,j)
   enddo
enddo
end subroutine

subroutine sub3(a,s,x,v)
real(4),dimension(1:4,1:2) :: a
real(4),dimension(1:2,1:3) :: s
real(4),dimension(1:4,1:3) :: x,v
real(4) :: tmp

tmp = 0.0_4
tmp = tmp + a(1,1)*s(1,1)
tmp = tmp + a(1,2)*s(2,1)
x(1,1) = tmp + v(1,1)

tmp = 0.0_4
tmp = tmp + a(2,1)*s(1,1)
tmp = tmp + a(2,2)*s(2,1)
x(2,1) = tmp + v(2,1)

tmp = 0.0_4
tmp = tmp + a(3,1)*s(1,1)
tmp = tmp + a(3,2)*s(2,1)
x(3,1) = tmp + v(3,1)

tmp = 0.0_4
tmp = tmp + a(4,1)*s(1,1)
tmp = tmp + a(4,2)*s(2,1)
x(4,1) = tmp + v(4,1)

tmp = 0.0_4
tmp = tmp + a(1,1)*s(1,2)
tmp = tmp + a(1,2)*s(2,2)
x(1,2) = tmp + v(1,2)

tmp = 0.0_4
tmp = tmp + a(2,1)*s(1,2)
tmp = tmp + a(2,2)*s(2,2)
x(2,2) = tmp + v(2,2)

tmp = 0.0_4
tmp = tmp + a(3,1)*s(1,2)
tmp = tmp + a(3,2)*s(2,2)
x(3,2) = tmp + v(3,2)

tmp = 0.0_4
tmp = tmp + a(4,1)*s(1,2)
tmp = tmp + a(4,2)*s(2,2)
x(4,2) = tmp + v(4,2)

tmp = 0.0_4
tmp = tmp + a(1,1)*s(1,3)
tmp = tmp + a(1,2)*s(2,3)
x(1,3) = tmp + v(1,3)

tmp = 0.0_4
tmp = tmp + a(2,1)*s(1,3)
tmp = tmp + a(2,2)*s(2,3)
x(2,3) = tmp + v(2,3)

tmp = 0.0_4
tmp = tmp + a(3,1)*s(1,3)
tmp = tmp + a(3,2)*s(2,3)
x(3,3) = tmp + v(3,3)

tmp = 0.0_4
tmp = tmp + a(4,1)*s(1,3)
tmp = tmp + a(4,2)*s(2,3)
x(4,3) = tmp + v(4,3)
end subroutine

subroutine check_x(x,test_no)
real(4),dimension(1:4,1:3) :: x
real(4),dimension(1:4,1:3) :: ans = reshape((/2.47720003_4, 3.79280019_4, 5.10840034_4, 6.42399979_4, 7.73960018_4, 9.63600063_4, 11.5324001_4, 13.4288006_4, 13.0019999_4, 15.4792004_4, 17.9563999_4, 20.4336014_4/),(/4,3/))
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
real(4),dimension(1:4,1:3) :: x,v

a = reshape((/(real(i,kind=4)*0.44_8,i=1,4*2)/),(/4,2/))
s = reshape((/(real(i,kind=4)*0.33_8,i=1,2*3)/),(/2,3/))
x = reshape((/(real(i,kind=4)*0.11_8,i=1,4*3)/),(/4,3/))
v = reshape((/(real(i,kind=4)*0.88_8,i=1,4*3)/),(/4,3/))
call sub1(a,s,x,v)
call check_x(x,1)

a = reshape((/(real(i,kind=4)*0.44_8,i=1,4*2)/),(/4,2/))
s = reshape((/(real(i,kind=4)*0.33_8,i=1,2*3)/),(/2,3/))
x = reshape((/(real(i,kind=4)*0.11_8,i=1,4*3)/),(/4,3/))
v = reshape((/(real(i,kind=4)*0.88_8,i=1,4*3)/),(/4,3/))
call sub2(a,s,x,v)
call check_x(x,2)

a = reshape((/(real(i,kind=4)*0.44_8,i=1,4*2)/),(/4,2/))
s = reshape((/(real(i,kind=4)*0.33_8,i=1,2*3)/),(/2,3/))
x = reshape((/(real(i,kind=4)*0.11_8,i=1,4*3)/),(/4,3/))
v = reshape((/(real(i,kind=4)*0.88_8,i=1,4*3)/),(/4,3/))
call sub3(a,s,x,v)
call check_x(x,3)

end program
