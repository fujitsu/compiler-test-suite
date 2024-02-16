subroutine sub1(a,s,x)
real(8),dimension(1:4,1:2) :: a
real(8),dimension(1:3,1:2) :: s
real(8),dimension(1:4,1:3) :: x
x = matmul(a,transpose(s))
end subroutine

subroutine sub2(a,s,x)
real(8),dimension(1:4,1:2) :: a
real(8),dimension(1:3,1:2) :: s
real(8),dimension(1:4,1:3) :: x
real(8) :: tmp
do i=1,4
   do j=1,3
      tmp = 0.0_8
      do k=1,2
         tmp = tmp + a(i,k)*s(j,k)
      enddo
      x(i,j) = tmp
   enddo
enddo
end subroutine

subroutine sub3(a,s,x)
real(8),dimension(1:4,1:2) :: a
real(8),dimension(1:3,1:2) :: s
real(8),dimension(1:4,1:3) :: x
real(8) :: tmp

tmp = 0.0
tmp = tmp + a(1,1)*s(1,1)
tmp = tmp + a(1,2)*s(1,2)
x(1,1) = tmp

tmp = 0.0
tmp = tmp + a(1,1)*s(2,1)
tmp = tmp + a(1,2)*s(2,2)
x(1,2) = tmp

tmp = 0.0
tmp = tmp + a(1,1)*s(3,1)
tmp = tmp + a(1,2)*s(3,2)
x(1,3) = tmp

tmp = 0.0
tmp = tmp + a(2,1)*s(1,1)
tmp = tmp + a(2,2)*s(1,2)
x(2,1) = tmp

tmp = 0.0
tmp = tmp + a(2,1)*s(2,1)
tmp = tmp + a(2,2)*s(2,2)
x(2,2) = tmp

tmp = 0.0
tmp = tmp + a(2,1)*s(3,1)
tmp = tmp + a(2,2)*s(3,2)
x(2,3) = tmp

tmp = 0.0
tmp = tmp + a(3,1)*s(1,1)
tmp = tmp + a(3,2)*s(1,2)
x(3,1) = tmp

tmp = 0.0
tmp = tmp + a(3,1)*s(2,1)
tmp = tmp + a(3,2)*s(2,2)
x(3,2) = tmp

tmp = 0.0
tmp = tmp + a(3,1)*s(3,1)
tmp = tmp + a(3,2)*s(3,2)
x(3,3) = tmp

tmp = 0.0
tmp = tmp + a(4,1)*s(1,1)
tmp = tmp + a(4,2)*s(1,2)
x(4,1) = tmp

tmp = 0.0
tmp = tmp + a(4,1)*s(2,1)
tmp = tmp + a(4,2)*s(2,2)
x(4,2) = tmp

tmp = 0.0
tmp = tmp + a(4,1)*s(3,1)
tmp = tmp + a(4,2)*s(3,2)
x(4,3) = tmp
end subroutine

subroutine check_x(x,test_no)
real(8),dimension(1:4,1:3) :: x
real(8),dimension(1:4,1:3) :: ans = reshape((/3.150000000000000_8, 3.899999999999999_8, &
     4.650000000000000_8, 5.399999999999999_8, 4.050000000000000_8, 5.100000000000000_8, &
     6.150000000000000_8, 7.200000000000000_8, 4.950000000000000_8, 6.299999999999999_8, &
     7.650000000000000_8, 9.000000000000000_8/),(/4,3/))
real(8),parameter :: error = 8.9E-16_8
integer :: test_no
do j=1,3
   do i=1,4
      if (abs(x(i,j)-ans(i,j)) .gt. error) then
         print *,"test_no=",test_no,", ng: i=",i,": ", x(i,j),ans(i,j),abs(x(i,j)-ans(i,j)),error
         print *,x
         return
      endif
   enddo
enddo
print *,"ok"
end subroutine

program main
real(8),dimension(1:4,1:2) :: a
real(8),dimension(1:3,1:2) :: s
real(8),dimension(1:4,1:3) :: x

a = reshape((/(real(i,kind=8)*0.3_8,i=1,4*2)/),(/4,2/))
s = reshape((/(real(i,kind=8)*0.5_8,i=1,3*2)/),(/3,2/))
x = reshape((/(real(i,kind=8)*0.9_8,i=1,4*3)/),(/4,3/))
call sub1(a,s,x)
call check_x(x,1)

a = reshape((/(real(i,kind=8)*0.3_8,i=1,4*2)/),(/4,2/))
s = reshape((/(real(i,kind=8)*0.5_8,i=1,3*2)/),(/3,2/))
x = reshape((/(real(i,kind=8)*0.9_8,i=1,4*3)/),(/4,3/))
call sub2(a,s,x)
call check_x(x,2)

a = reshape((/(real(i,kind=8)*0.3_8,i=1,4*2)/),(/4,2/))
s = reshape((/(real(i,kind=8)*0.5_8,i=1,3*2)/),(/3,2/))
x = reshape((/(real(i,kind=8)*0.9_8,i=1,4*3)/),(/4,3/))
call sub3(a,s,x)
call check_x(x,3)

end program
