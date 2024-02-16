subroutine sub1(a,s,x,f)
real(8),dimension(1:5,1:2) :: a
real(8),dimension(1:5,1:3) :: s
real(8),dimension(1:2,1:3) :: x
real(8) :: f
x = matmul(transpose(a),s) + f*x
end subroutine

subroutine sub2(a,s,x,f)
real(8),dimension(1:5,1:2) :: a
real(8),dimension(1:5,1:3) :: s
real(8),dimension(1:2,1:3) :: x
real(8) :: tmp,f
do j=1,3
   do i=1,2
      tmp = 0.0_8
      do k=1,5
         tmp = tmp + a(k,i)*s(k,j)
      enddo
      x(i,j) = tmp + f*x(i,j)
   enddo
enddo
end subroutine

subroutine sub3(a,s,x,f)
real(8),dimension(1:5,1:2) :: a
real(8),dimension(1:5,1:3) :: s
real(8),dimension(1:2,1:3) :: x
real(8) :: tmp,f

tmp = 0.0_8
tmp = tmp + a(1,1)*s(1,1)
tmp = tmp + a(2,1)*s(2,1)
tmp = tmp + a(3,1)*s(3,1)
tmp = tmp + a(4,1)*s(4,1)
tmp = tmp + a(5,1)*s(5,1)
x(1,1) = tmp + f*x(1,1)

tmp = 0.0_8
tmp = tmp + a(1,2)*s(1,1)
tmp = tmp + a(2,2)*s(2,1)
tmp = tmp + a(3,2)*s(3,1)
tmp = tmp + a(4,2)*s(4,1)
tmp = tmp + a(5,2)*s(5,1)
x(2,1) = tmp + f*x(2,1)

tmp = 0.0_8
tmp = tmp + a(1,1)*s(1,2)
tmp = tmp + a(2,1)*s(2,2)
tmp = tmp + a(3,1)*s(3,2)
tmp = tmp + a(4,1)*s(4,2)
tmp = tmp + a(5,1)*s(5,2)
x(1,2) = tmp + f*x(1,2)

tmp = 0.0_8
tmp = tmp + a(1,2)*s(1,2)
tmp = tmp + a(2,2)*s(2,2)
tmp = tmp + a(3,2)*s(3,2)
tmp = tmp + a(4,2)*s(4,2)
tmp = tmp + a(5,2)*s(5,2)
x(2,2) = tmp + f*x(2,2)

tmp = 0.0_8
tmp = tmp + a(1,1)*s(1,3)
tmp = tmp + a(2,1)*s(2,3)
tmp = tmp + a(3,1)*s(3,3)
tmp = tmp + a(4,1)*s(4,3)
tmp = tmp + a(5,1)*s(5,3)
x(1,3) = tmp + f*x(1,3)

tmp = 0.0_8
tmp = tmp + a(1,2)*s(1,3)
tmp = tmp + a(2,2)*s(2,3)
tmp = tmp + a(3,2)*s(3,3)
tmp = tmp + a(4,2)*s(4,3)
tmp = tmp + a(5,2)*s(5,3)
x(2,3) = tmp + f*x(2,3)
end subroutine

subroutine check_x(x,test_no)
real(8),dimension(1:2,1:3) :: x
real(8),dimension(1:2,1:3) :: ans = reshape((/11.22000000000000_8, 25.44000000000000_8, 28.41000000000000_8, 61.38000000000000_8, 45.59999999999999_8, 97.31999999999999_8/),(/2,3/))
real(8),parameter :: error = 1.6E-14_8
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
real(8),dimension(1:5,1:2) :: a
real(8),dimension(1:5,1:3) :: s
real(8),dimension(1:2,1:3) :: x
real(8),parameter :: f=3.3_8

a = reshape((/(real(i,kind=8)*0.3_8,i=1,5*2)/),(/5,2/))
s = reshape((/(real(i,kind=8)*0.5_8,i=1,5*3)/),(/5,3/))
x = reshape((/(real(i,kind=8)*0.9_8,i=1,2*3)/),(/2,3/))
call sub1(a,s,x,f)
call check_x(x,1)

a = reshape((/(real(i,kind=8)*0.3_8,i=1,5*2)/),(/5,2/))
s = reshape((/(real(i,kind=8)*0.5_8,i=1,5*3)/),(/5,3/))
x = reshape((/(real(i,kind=8)*0.9_8,i=1,2*3)/),(/2,3/))
call sub2(a,s,x,f)
call check_x(x,2)

a = reshape((/(real(i,kind=8)*0.3_8,i=1,5*2)/),(/5,2/))
s = reshape((/(real(i,kind=8)*0.5_8,i=1,5*3)/),(/5,3/))
x = reshape((/(real(i,kind=8)*0.9_8,i=1,2*3)/),(/2,3/))
call sub3(a,s,x,f)
call check_x(x,3)
end program
