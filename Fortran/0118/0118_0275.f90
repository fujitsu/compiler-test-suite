logical function equal_with_margin(a,b)
  real(4) :: a,b
  equal_with_margin = ((abs(a - b)/abs(a)) .gt. 1.0E-6)
end function equal_with_margin

subroutine sub1(a,s,x)
real(4),dimension(1:4,1:2) :: a
real(4),dimension(1:3,1:2) :: s
real(4),dimension(1:4,1:3) :: x
x = matmul(a,transpose(s))
end subroutine

subroutine sub2(a,s,x)
real(4),dimension(1:4,1:2) :: a
real(4),dimension(1:3,1:2) :: s
real(4),dimension(1:4,1:3) :: x
real(4) :: tmp
do i=1,4
   do j=1,3
      tmp = 0.0_4
      do k=1,2
         tmp = tmp + a(i,k)*s(j,k)
      enddo
      x(i,j) = tmp
   enddo
enddo
end subroutine

subroutine sub3(a,s,x)
real(4),dimension(1:4,1:2) :: a
real(4),dimension(1:3,1:2) :: s
real(4),dimension(1:4,1:3) :: x
real(4) :: tmp

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
real(4),dimension(1:4,1:3) :: x
real(4),dimension(1:4,1:3) :: ans = reshape((/3.15000010_4, 3.89999986_4, 4.64999962_4, 5.40000010_4, 4.05000019_4, 5.09999990_4, 6.15000010_4, 7.19999981_4, 4.94999981_4, 6.29999971_4, 7.64999962_4, 9.00000000_4/),(/4,3/))
integer :: test_no
logical :: equal_with_margin
do j=1,3
   do i=1,4
      if (equal_with_margin(x(i,j),ans(i,j))) then
         print *,"test_no=",test_no,", ng: i=",i,": ", x(i,j),ans(i,j)
         print *,x
         return
      endif
   enddo
enddo
print *,"ok"
end subroutine

program main
real(4),dimension(1:4,1:2) :: a
real(4),dimension(1:3,1:2) :: s
real(4),dimension(1:4,1:3) :: x

a = reshape((/(real(i,kind=4)*0.3_8,i=1,4*2)/),(/4,2/))
s = reshape((/(real(i,kind=4)*0.5_8,i=1,3*2)/),(/3,2/))
x = reshape((/(real(i,kind=4)*0.9_8,i=1,4*3)/),(/4,3/))
call sub1(a,s,x)
call check_x(x,1)

a = reshape((/(real(i,kind=4)*0.3_8,i=1,4*2)/),(/4,2/))
s = reshape((/(real(i,kind=4)*0.5_8,i=1,3*2)/),(/3,2/))
x = reshape((/(real(i,kind=4)*0.9_8,i=1,4*3)/),(/4,3/))
call sub2(a,s,x)
call check_x(x,2)

a = reshape((/(real(i,kind=4)*0.3_8,i=1,4*2)/),(/4,2/))
s = reshape((/(real(i,kind=4)*0.5_8,i=1,3*2)/),(/3,2/))
x = reshape((/(real(i,kind=4)*0.9_8,i=1,4*3)/),(/4,3/))
call sub3(a,s,x)
call check_x(x,3)

end program
