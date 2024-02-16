logical function equal_with_margin(a,b)
  real(8) :: a,b
  equal_with_margin = ((abs(a - b)/abs(a)) .gt. 1.0E-15_8)
end function equal_with_margin

subroutine sub1(a,s,x,b)
real(8),dimension(1:2,1:5) :: a
real(8),dimension(1:5,1:3) :: s
real(8),dimension(1:2,1:3) :: x
real(8) :: b
x = matmul(a,s) + b*x
end subroutine

subroutine sub2(a,s,x,b)
real(8),dimension(1:2,1:5) :: a
real(8),dimension(1:5,1:3) :: s
real(8),dimension(1:2,1:3) :: x
real(8) :: tmp,b
do j=1,3
   do i=1,2
      tmp = 0.0_8
      do k=1,5
         tmp = tmp + a(i,k)*s(k,j)
      enddo
      x(i,j) = tmp + b*x(i,j)
   enddo
enddo
end subroutine

subroutine sub3(a,s,x,b)
real(8),dimension(1:2,1:5) :: a
real(8),dimension(1:5,1:3) :: s
real(8),dimension(1:2,1:3) :: x
real(8) :: tmp,b

tmp = 0.0_8
tmp = tmp + a(1,1)*s(1,1)
tmp = tmp + a(1,2)*s(2,1)
tmp = tmp + a(1,3)*s(3,1)
tmp = tmp + a(1,4)*s(4,1)
tmp = tmp + a(1,5)*s(5,1)
x(1,1) = tmp + b*x(1,1)

tmp = 0.0_8
tmp = tmp + a(2,1)*s(1,1)
tmp = tmp + a(2,2)*s(2,1)
tmp = tmp + a(2,3)*s(3,1)
tmp = tmp + a(2,4)*s(4,1)
tmp = tmp + a(2,5)*s(5,1)
x(2,1) = tmp + b*x(2,1)

tmp = 0.0_8
tmp = tmp + a(1,1)*s(1,2)
tmp = tmp + a(1,2)*s(2,2)
tmp = tmp + a(1,3)*s(3,2)
tmp = tmp + a(1,4)*s(4,2)
tmp = tmp + a(1,5)*s(5,2)
x(1,2) = tmp + b*x(1,2)

tmp = 0.0_8
tmp = tmp + a(2,1)*s(1,2)
tmp = tmp + a(2,2)*s(2,2)
tmp = tmp + a(2,3)*s(3,2)
tmp = tmp + a(2,4)*s(4,2)
tmp = tmp + a(2,5)*s(5,2)
x(2,2) = tmp + b*x(2,2)

tmp = 0.0_8
tmp = tmp + a(1,1)*s(1,3)
tmp = tmp + a(1,2)*s(2,3)
tmp = tmp + a(1,3)*s(3,3)
tmp = tmp + a(1,4)*s(4,3)
tmp = tmp + a(1,5)*s(5,3)
x(1,3) = tmp + b*x(1,3)

tmp = 0.0_8
tmp = tmp + a(2,1)*s(1,3)
tmp = tmp + a(2,2)*s(2,3)
tmp = tmp + a(2,3)*s(3,3)
tmp = tmp + a(2,4)*s(4,3)
tmp = tmp + a(2,5)*s(5,3)
x(2,3) = tmp + b*x(2,3)
end subroutine

subroutine check_x(x,test_no)
real(8),dimension(1:2,1:3) :: x
real(8),dimension(1:2,1:3) :: ans = reshape((/17.22000000000000_8, 22.44000000000000_8, 41.91000000000000_8, 50.88000000000000_8, 66.59999999999999_8, 79.31999999999999_8/),(/2,3/))
integer :: test_no
logical :: equal_with_margin
do j=1,3
   do i=1,2
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
real(8),dimension(1:2,1:5) :: a
real(8),dimension(1:5,1:3) :: s
real(8),dimension(1:2,1:3) :: x
real(8),parameter :: b=3.3_8

a = reshape((/(real(i,kind=8)*0.3_8,i=1,2*5)/),(/2,5/))
s = reshape((/(real(i,kind=8)*0.5_8,i=1,5*3)/),(/5,3/))
x = reshape((/(real(i,kind=8)*0.9_8,i=1,2*3)/),(/2,3/))
call sub1(a,s,x,b)
call check_x(x,1)

a = reshape((/(real(i,kind=8)*0.3_8,i=1,2*5)/),(/2,5/))
s = reshape((/(real(i,kind=8)*0.5_8,i=1,5*3)/),(/5,3/))
x = reshape((/(real(i,kind=8)*0.9_8,i=1,2*3)/),(/2,3/))
call sub2(a,s,x,b)
call check_x(x,2)

a = reshape((/(real(i,kind=8)*0.3_8,i=1,2*5)/),(/2,5/))
s = reshape((/(real(i,kind=8)*0.5_8,i=1,5*3)/),(/5,3/))
x = reshape((/(real(i,kind=8)*0.9_8,i=1,2*3)/),(/2,3/))
call sub3(a,s,x,b)
call check_x(x,3)

end program
