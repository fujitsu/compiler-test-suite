subroutine sub1(a,s,x,v)
real(8),dimension(1:4,1:2) :: a
real(8),dimension(1:2,1:3) :: s
real(8),dimension(1:4,1:3) :: x,v
x = matmul(a,s) + v
end subroutine

subroutine sub2(a,s,x,v)
real(8),dimension(1:4,1:2) :: a
real(8),dimension(1:2,1:3) :: s
real(8),dimension(1:4,1:3) :: x,v
real(8) :: tmp
do j=1,3
   do i=1,4
      tmp = 0.0_8
      do k=1,2
         tmp = tmp + a(i,k)*s(k,j)
      enddo
      x(i,j) = tmp + v(i,j)
   enddo
enddo
end subroutine

subroutine sub3(a,s,x,v)
real(8),dimension(1:4,1:2) :: a
real(8),dimension(1:2,1:3) :: s
real(8),dimension(1:4,1:3) :: x,v
real(8) :: tmp

tmp = 0.0_8
tmp = tmp + a(1,1)*s(1,1)
tmp = tmp + a(1,2)*s(2,1)
x(1,1) = tmp + v(1,1)

tmp = 0.0_8
tmp = tmp + a(2,1)*s(1,1)
tmp = tmp + a(2,2)*s(2,1)
x(2,1) = tmp + v(2,1)

tmp = 0.0_8
tmp = tmp + a(3,1)*s(1,1)
tmp = tmp + a(3,2)*s(2,1)
x(3,1) = tmp + v(3,1)

tmp = 0.0_8
tmp = tmp + a(4,1)*s(1,1)
tmp = tmp + a(4,2)*s(2,1)
x(4,1) = tmp + v(4,1)

tmp = 0.0_8
tmp = tmp + a(1,1)*s(1,2)
tmp = tmp + a(1,2)*s(2,2)
x(1,2) = tmp + v(1,2)

tmp = 0.0_8
tmp = tmp + a(2,1)*s(1,2)
tmp = tmp + a(2,2)*s(2,2)
x(2,2) = tmp + v(2,2)

tmp = 0.0_8
tmp = tmp + a(3,1)*s(1,2)
tmp = tmp + a(3,2)*s(2,2)
x(3,2) = tmp + v(3,2)

tmp = 0.0_8
tmp = tmp + a(4,1)*s(1,2)
tmp = tmp + a(4,2)*s(2,2)
x(4,2) = tmp + v(4,2)

tmp = 0.0_8
tmp = tmp + a(1,1)*s(1,3)
tmp = tmp + a(1,2)*s(2,3)
x(1,3) = tmp + v(1,3)

tmp = 0.0_8
tmp = tmp + a(2,1)*s(1,3)
tmp = tmp + a(2,2)*s(2,3)
x(2,3) = tmp + v(2,3)

tmp = 0.0_8
tmp = tmp + a(3,1)*s(1,3)
tmp = tmp + a(3,2)*s(2,3)
x(3,3) = tmp + v(3,3)

tmp = 0.0_8
tmp = tmp + a(4,1)*s(1,3)
tmp = tmp + a(4,2)*s(2,3)
x(4,3) = tmp + v(4,3)
end subroutine

subroutine check_x(x,test_no)
real(8),dimension(1:4,1:3) :: x
real(8),dimension(1:4,1:3) :: ans = reshape((/2.477200000000000_8, 3.792800000000000_8, &
     5.108400000000000_8, 6.423999999999999_8, 7.739600000000000_8, 9.636000000000001_8, &
     11.53240000000000_8, 13.42880000000000_8, 13.00200000000000_8, 15.47920000000000_8, &
     17.95640000000000_8, 20.43360000000000_8/),(/4,3/))
real(8),parameter :: error = 3.6E-15_8
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

a = reshape((/(real(i,kind=8)*0.44_8,i=1,4*2)/),(/4,2/))
s = reshape((/(real(i,kind=8)*0.33_8,i=1,2*3)/),(/2,3/))
x = reshape((/(real(i,kind=8)*0.11_8,i=1,4*3)/),(/4,3/))
v = reshape((/(real(i,kind=8)*0.88_8,i=1,4*3)/),(/4,3/))
call sub1(a,s,x,v)
call check_x(x,1)

a = reshape((/(real(i,kind=8)*0.44_8,i=1,4*2)/),(/4,2/))
s = reshape((/(real(i,kind=8)*0.33_8,i=1,2*3)/),(/2,3/))
x = reshape((/(real(i,kind=8)*0.11_8,i=1,4*3)/),(/4,3/))
v = reshape((/(real(i,kind=8)*0.88_8,i=1,4*3)/),(/4,3/))
call sub2(a,s,x,v)
call check_x(x,2)

a = reshape((/(real(i,kind=8)*0.44_8,i=1,4*2)/),(/4,2/))
s = reshape((/(real(i,kind=8)*0.33_8,i=1,2*3)/),(/2,3/))
x = reshape((/(real(i,kind=8)*0.11_8,i=1,4*3)/),(/4,3/))
v = reshape((/(real(i,kind=8)*0.88_8,i=1,4*3)/),(/4,3/))
call sub3(a,s,x,v)
call check_x(x,3)

end program
