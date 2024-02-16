subroutine sub1(a,s,x)
real(8),dimension(1:4,1:2) :: a
real(8),dimension(1:2,1:3) :: s
real(8),dimension(1:4,1:3) :: x
x = matmul(a,s) + 1.2_8*x
end subroutine

subroutine sub2(a,s,x)
real(8),dimension(1:4,1:2) :: a
real(8),dimension(1:2,1:3) :: s
real(8),dimension(1:4,1:3) :: x
real(8) :: tmp
do j=1,3
   do i=1,4
      tmp = 0.0_8
      do k=1,2
         tmp = tmp + a(i,k)*s(k,j)
      enddo
      x(i,j) = tmp + 1.2_8*x(i,j)
   enddo
enddo
end subroutine

subroutine sub3(a,s,x)
real(8),dimension(1:4,1:2) :: a
real(8),dimension(1:2,1:3) :: s
real(8),dimension(1:4,1:3) :: x
real(8) :: tmp

tmp = 0.0_8
tmp = tmp + a(1,1)*s(1,1)
tmp = tmp + a(1,2)*s(2,1)
x(1,1) = tmp + 1.2_8*x(1,1)

tmp = 0.0_8
tmp = tmp + a(2,1)*s(1,1)
tmp = tmp + a(2,2)*s(2,1)
x(2,1) = tmp + 1.2_8*x(2,1)

tmp = 0.0_8
tmp = tmp + a(3,1)*s(1,1)
tmp = tmp + a(3,2)*s(2,1)
x(3,1) = tmp + 1.2_8*x(3,1)

tmp = 0.0_8
tmp = tmp + a(4,1)*s(1,1)
tmp = tmp + a(4,2)*s(2,1)
x(4,1) = tmp + 1.2_8*x(4,1)

tmp = 0.0_8
tmp = tmp + a(1,1)*s(1,2)
tmp = tmp + a(1,2)*s(2,2)
x(1,2) = tmp + 1.2_8*x(1,2)

tmp = 0.0_8
tmp = tmp + a(2,1)*s(1,2)
tmp = tmp + a(2,2)*s(2,2)
x(2,2) = tmp + 1.2_8*x(2,2)

tmp = 0.0_8
tmp = tmp + a(3,1)*s(1,2)
tmp = tmp + a(3,2)*s(2,2)
x(3,2) = tmp + 1.2_8*x(3,2)

tmp = 0.0_8
tmp = tmp + a(4,1)*s(1,2)
tmp = tmp + a(4,2)*s(2,2)
x(4,2) = tmp + 1.2_8*x(4,2)

tmp = 0.0_8
tmp = tmp + a(1,1)*s(1,3)
tmp = tmp + a(1,2)*s(2,3)
x(1,3) = tmp + 1.2_8*x(1,3)

tmp = 0.0_8
tmp = tmp + a(2,1)*s(1,3)
tmp = tmp + a(2,2)*s(2,3)
x(2,3) = tmp + 1.2_8*x(2,3)

tmp = 0.0_8
tmp = tmp + a(3,1)*s(1,3)
tmp = tmp + a(3,2)*s(2,3)
x(3,3) = tmp + 1.2_8*x(3,3)

tmp = 0.0_8
tmp = tmp + a(4,1)*s(1,3)
tmp = tmp + a(4,2)*s(2,3)
x(4,3) = tmp + 1.2_8*x(4,3)
end subroutine

subroutine check_x(x,test_no)
real(8),dimension(1:4,1:3) :: x
real(8),dimension(1:4,1:3) :: ans = reshape((/2.730000000000000_8, 4.260000000000000_8, &
     5.790000000000000_8, 7.320000000000000_8, 8.850000000000000_8, 10.98000000000000_8, &
     13.11000000000000_8, 15.24000000000000_8, 14.97000000000000_8, 17.70000000000000_8, &
     20.43000000000000_8, 23.16000000000000_8/),(/4,3/))
real(8),parameter :: error = 1.7763568395E-15_8
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
real(8),dimension(1:4,1:3) :: x

a = reshape((/(real(i,kind=8)*0.3_8,i=1,4*2)/),(/4,2/))
s = reshape((/(real(i,kind=8)*0.5_8,i=1,2*3)/),(/2,3/))
x = reshape((/(real(i,kind=8)*0.9_8,i=1,4*3)/),(/4,3/))
call sub1(a,s,x)
call check_x(x,1)

a = reshape((/(real(i,kind=8)*0.3_8,i=1,4*2)/),(/4,2/))
s = reshape((/(real(i,kind=8)*0.5_8,i=1,2*3)/),(/2,3/))
x = reshape((/(real(i,kind=8)*0.9_8,i=1,4*3)/),(/4,3/))
call sub2(a,s,x)
call check_x(x,2)

a = reshape((/(real(i,kind=8)*0.3_8,i=1,4*2)/),(/4,2/))
s = reshape((/(real(i,kind=8)*0.5_8,i=1,2*3)/),(/2,3/))
x = reshape((/(real(i,kind=8)*0.9_8,i=1,4*3)/),(/4,3/))
call sub3(a,s,x)
call check_x(x,3)

end program
