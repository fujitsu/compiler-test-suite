subroutine sub1(a,s,x,f)
real(8),dimension(1:2,1:4) :: a
real(8),dimension(1:3,1:2) :: s
real(8),dimension(1:4,1:3) :: x
real(8) :: f
x = f*matmul(transpose(a),transpose(s))
end subroutine

subroutine sub2(a,s,x,f)
real(8),dimension(1:2,1:4) :: a
real(8),dimension(1:3,1:2) :: s
real(8),dimension(1:4,1:3) :: x
real(8) :: tmp,f
do j=1,3
   do i=1,4
      tmp = 0.0_8
      do k=1,2
         tmp = tmp + a(k,i)*s(j,k)
      enddo
      x(i,j) = f*tmp
   enddo
enddo
end subroutine

subroutine sub3(a,s,x,f)
real(8),dimension(1:2,1:4) :: a
real(8),dimension(1:3,1:2) :: s
real(8),dimension(1:4,1:3) :: x
real(8) :: tmp,f

tmp = 0.0_8
tmp = tmp + a(1,1)*s(1,1)
tmp = tmp + a(2,1)*s(1,2)
x(1,1) = f*tmp

tmp = 0.0_8
tmp = tmp + a(1,2)*s(1,1)
tmp = tmp + a(2,2)*s(1,2)
x(2,1) = f*tmp

tmp = 0.0_8
tmp = tmp + a(1,3)*s(1,1)
tmp = tmp + a(2,3)*s(1,2)
x(3,1) = f*tmp

tmp = 0.0_8
tmp = tmp + a(1,4)*s(1,1)
tmp = tmp + a(2,4)*s(1,2)
x(4,1) = f*tmp

tmp = 0.0_8
tmp = tmp + a(1,1)*s(2,1)
tmp = tmp + a(2,1)*s(2,2)
x(1,2) = f*tmp

tmp = 0.0_8
tmp = tmp + a(1,2)*s(2,1)
tmp = tmp + a(2,2)*s(2,2)
x(2,2) = f*tmp

tmp = 0.0_8
tmp = tmp + a(1,3)*s(2,1)
tmp = tmp + a(2,3)*s(2,2)
x(3,2) = f*tmp

tmp = 0.0_8
tmp = tmp + a(1,4)*s(2,1)
tmp = tmp + a(2,4)*s(2,2)
x(4,2) = f*tmp

tmp = 0.0_8
tmp = tmp + a(1,1)*s(3,1)
tmp = tmp + a(2,1)*s(3,2)
x(1,3) = f*tmp

tmp = 0.0_8
tmp = tmp + a(1,2)*s(3,1)
tmp = tmp + a(2,2)*s(3,2)
x(2,3) = f*tmp

tmp = 0.0_8
tmp = tmp + a(1,3)*s(3,1)
tmp = tmp + a(2,3)*s(3,2)
x(3,3) = f*tmp

tmp = 0.0_8
tmp = tmp + a(1,4)*s(3,1)
tmp = tmp + a(2,4)*s(3,2)
x(4,3) = f*tmp
end subroutine

subroutine check_x(x,test_no)
real(8),dimension(1:4,1:3) :: x
real(8),dimension(1:4,1:3) :: ans = reshape((/68.31000000000000_8, 144.2100000000000_8, &
     220.1100000000000_8, 296.0100000000000_8, 91.07999999999998_8, 197.3400000000000_8, &
     303.6000000000000_8, 409.8600000000000_8, 113.8500000000000_8, 250.4700000000000_8, &
     387.0900000000000_8, 523.7100000000000_8/),(/4,3/))
real(8),parameter :: error = 2.0E-13_8
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
real(8),dimension(1:3,1:2) :: s
real(8),dimension(1:4,1:3) :: x
real(8),parameter :: f=3.0_8

a = reshape((/(real(i,kind=8)*2.3_8,i=1,2*4)/),(/2,4/))
s = reshape((/(real(i,kind=8)*1.1_8,i=1,3*2)/),(/3,2/))
x = reshape((/(real(i,kind=8)*0.9_8,i=1,4*3)/),(/4,3/))
call sub1(a,s,x,f)
call check_x(x,1)

a = reshape((/(real(i,kind=8)*2.3_8,i=1,2*4)/),(/2,4/))
s = reshape((/(real(i,kind=8)*1.1_8,i=1,3*2)/),(/3,2/))
x = reshape((/(real(i,kind=8)*0.9_8,i=1,4*3)/),(/4,3/))
call sub2(a,s,x,f)
call check_x(x,2)

a = reshape((/(real(i,kind=8)*2.3_8,i=1,2*4)/),(/2,4/))
s = reshape((/(real(i,kind=8)*1.1_8,i=1,3*2)/),(/3,2/))
x = reshape((/(real(i,kind=8)*0.9_8,i=1,4*3)/),(/4,3/))
call sub3(a,s,x,f)
call check_x(x,3)

end program
